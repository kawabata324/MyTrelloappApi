class Student < ApplicationRecord
  belongs_to :school
  has_one  :person, dependent: :destroy
end
