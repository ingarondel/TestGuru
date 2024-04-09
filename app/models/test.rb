class Test < ApplicationRecord
belongs_to :category
 belongs_to :author, class_name: "User", foreign_key: "user_id"

has_many :questions, dependent: :destroy
has_many :tests_users, dependent: :destroy
has_many :users, through: :tests_users, dependent: :destroy
end
