class Friendship < ApplicationRecord
  belongs_to :locallect
  belongs_to :explorer
  has_many :messages
  has_many :transactions

end
