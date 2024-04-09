class Test < ApplicationRecord
	belongs_to :category
	belongs_to :author, class_name: "User", foreign_key: "user_id"

	has_many :questions, dependent: :destroy
	has_many :tests_users, dependent: :destroy
	has_many :users, through: :tests_users, dependent: :destroy

	validates :title, presence:   true,
					  uniqueness: true

	validates :level, numericality: { only_integer: true }, allow_nil: true, if: :ruby_test?

	validate :validate_max_level, on: :create

	# default_scope { order(created_at: :desc)}

	scope :easy, -> (level) {where(level:level).order(created_at: :desc)}
	scope :easy_ruby, -> {easy.where(title: 'Ruby')}

	private

	def validate_max_level
		errors.add(:level) if level.to_i > 10
	end

	def ruby_test?
		title.match(/Ruby/i)
	end
end
