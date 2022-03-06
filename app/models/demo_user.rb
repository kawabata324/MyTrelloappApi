class DemoUser < ApplicationRecord
  has_many :demo_tweets, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
end



