class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
  		 :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :confirmable
	
has_many   :test_passages
has_many   :tests, through: :test_passages	

validates :email, presence:        true, 
				  uniqueness:      true,
				  format:          { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

	def test_passage(test)
		test_passages.order(id: :desc).find_by(test_id: test.id)
	end

end
