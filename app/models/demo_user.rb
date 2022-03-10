class DemoUser < ApplicationRecord
  has_many :demo_tweets, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, confirmation: { message: '二つの値を一致させる必要があります' }
  validates :test_acceptance, acceptance: true, presence: true
end
