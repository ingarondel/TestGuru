class Test < ApplicationRecord
	belongs_to :category
	belongs_to :author, class_name: "User", foreign_key: :user_id, optional: true

	has_many   :test_passages
	has_many   :users, through: :test_passages
	has_many   :questions, dependent: :destroy


	validates  :title, presence:   true,
					  uniqueness: {scope: :level}

	validates  :level, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

	default_scope -> { joins(:category).order(title: :asc) }

	scope      :easy, -> { where(level: 0..1).order(created_at: :desc) }
	scope      :medium, -> { where(level: 2..4).order(created_at: :desc) }
	scope      :hard, -> { where("level >= ?", 5).order(created_at: :desc) }

  def self.by_category(category)
    by_category(title_name).order(title: :desc).pluck(:title)
  end

  def test_to_pass?
    !(questions.empty? || questions.joins(:answers).empty?)
  end

  def time_in_sec	  
    time*60 if time.present?	
  end
end