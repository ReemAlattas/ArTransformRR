class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_USERNAME_REGEX = /\A[\w\-]+\z/i

  validates :email,    format: { with: VALID_EMAIL_REGEX }, presence: true,
            uniqueness: true
  validates :username, format: { with: VALID_USERNAME_REGEX },
            length: { minimum: 6, maximum: 30 }, presence: true,
            uniqueness: true

  has_many :auctions, as: :auctionable, dependent: :destroy

  def email=(value)
    write_attribute(:email, value.to_s.downcase)
  end

  def username=(value)
    write_attribute(:username, value.to_s.downcase)
  end
end