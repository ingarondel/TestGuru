class Badge < ApplicationRecord
	has_many :user_badges
	has_many :users, through: :user_badges

	  BADGE_RULES = {
      'Passing all tests in a category' => :category_completed?,
      'Passing the test successfully on the first try' => :success_first_try?,
      'Passing all tests of a certain level' => :level_complete?
  }
end
