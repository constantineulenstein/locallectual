class Locallect < ApplicationRecord
  belongs_to :user
  has_many :friendships, dependent: :destroy
  has_many :transactions
end
