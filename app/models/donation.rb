class Donation < ApplicationRecord
  belongs_to :school
  belongs_to :user

  validates_presence_of :amount
end
