class User < ApplicationRecord
	def tests_for_difficulty(difficulty)
    tests.where(level: difficulty)
  end
end
