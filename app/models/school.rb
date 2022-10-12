class School < ApplicationRecord
  has_many :users
  has_many :donations, dependent: :nullify

  validates_presence_of :name, :account_number
end
