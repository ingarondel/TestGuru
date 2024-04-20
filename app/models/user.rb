require 'digest/sha1'

class User < ApplicationRecord
	
has_many   :test_passages
has_many   :tests, through: :test_passages	

validates :email, presence:        true, 
				  uniqueness:      true,
				  format:          { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
validates :password, confirmation: true				  
validates :password, presence:     true, if: Proc.new { |u| u.password_digest.blank? }

has_secure_password 

	def test_passage(test)
		test_passages.order(id: :desc).find_by(test_id: test.id)
	end

end
