class User < ApplicationRecord
has_many :tests_users
has_many :tests, through: :tests_users, dependent: :destroy
has_many :created_tests, class_name: "Test", foreign_key: "user_id"
end
