class TestPassage < ApplicationRecord
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', foreign_key: 'current_question_id', optional: true

  before_validation :before_validation_set_first_question, on: :create
  before_validation :before_validation_set_next_question, on: :update

  def current_question_number
    if next_question || current_question
      test.questions.order(:id).where('id < ?', current_question).count + 1
    else
      test.questions.count
    end
  end

  def accept!(answer_ids)
    self.correct_question += 1 if correct_answer?(answer_ids)
    self.success_passed = true if success?
    save!
  end

  def success?
    score >= 85
  end

  def progress_percent
    ((current_question_number.to_f - 1) / total_questions * 100).round
  end

   def total_questions
    test.questions.size
  end

  def score
    (correct_question.to_f * 100 / test.questions.count).round
  end

  def completed?
    current_question.nil?
  end

  def time_up?
    time_left.negative?
  end

  def time_left
    test.time_in_sec - (Time.current - created_at)
  end

  private

  def before_validation_set_first_question
    self.current_question = test.questions.first if test.present?
  end

  def before_validation_set_next_question
    self.current_question = next_question
  end

  def correct_answer?(answer_ids)
    correct_answers.ids.sort == answer_ids.map(&:to_i).sort unless answer_ids.nil?
  end

  def correct_answers
    current_question.answers.where(correct: true)
  end

def next_question
     test.questions.order(:id).where('id > ?', current_question.id).first
end
end