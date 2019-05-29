class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
