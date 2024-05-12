class User < ApplicationRecord
  devise :database_authenticatable, 
  		   :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :confirmable
	
has_many   :test_passages
has_many   :tests, through: :test_passages	
has_many :authored_tests, class_name: 'Test', foreign_key: :user_id
has_many :badges, through: :user_badges
has_many :user_badges

validates :email, presence:        true, 
				  uniqueness:      true,
				  format:          { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

	def test_passage(test)
		test_passages.order(id: :desc).find_by(test_id: test.id)
	end

  def admin?
    self.is_a?(Admin)
  end

end
