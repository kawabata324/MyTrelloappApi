class List < ApplicationRecord
  belongs_to :user
  has_many :cards

  validates :list_title, presence: true
end
