class Test < ApplicationRecord
	belongs_to :category
	# belongs_to :author, class_name: "User", foreign_key: "user_id"

	has_many   :questions, dependent: :destroy
	has_many   :tests_users, dependent: :destroy
	has_many   :users, through: :tests_users, dependent: :destroy

	validates  :title, presence:   true,
					  uniqueness:  true

	# validates  :level, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

	# default_scope -> { joins(:category).order(title: :asc) }

	scope      :easy, -> { where(level: 0..1) }
	scope      :medium, -> { where(level: 2..4) }
	scope      :hard, -> { where(level: 5..Float::INFINITY) }
end