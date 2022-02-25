class List < ApplicationRecord
  belongs_to :user
  has_many :cards, dependent: :destroy

  validates :list_title, presence: true
end
