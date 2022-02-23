class DemoUser < ApplicationRecord
  has_many :tweets

  validates :name, presence: true
  validates :email, presence: true
end
