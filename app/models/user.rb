class User < ApplicationRecord
  has_many :favorites

  validates_presence_of :email, :name, :api_key
  validates :email, uniqueness: { case_sensitive: false, message: 'User already exists with given email' }
  validates :email, email: true

  before_validation :generate_api_key

  def generate_api_key
    self.api_key = SecureRandom.hex
  end
end
