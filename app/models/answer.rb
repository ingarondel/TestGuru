class Answer < ApplicationRecord
	belongs_to :question
	scope      :correct_answ, -> { where(correct: true)}
	# validate   :validate_number_of_answers

	# private

	# def validate_number_of_answers
	#   errors.add(:title, "Question can have 1 to 4 answers") unless question.answers.count.between?(1, 4)
	# end
end
