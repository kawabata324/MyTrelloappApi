class Card < ApplicationRecord
  belongs_to :user
  belongs_to :list

  enum status: {'non-finish': 0, 'finish': 1}
  
  validates :card_title, presence: true
  validates :status, inclusion: {in: Card.statuses.keys}
end
