class Locallect < ApplicationRecord
  belongs_to :user
  has_many :friendships
  has_many :transactions
end
