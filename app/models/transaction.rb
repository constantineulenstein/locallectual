class Transaction < ApplicationRecord
  belongs_to :locallect
  belongs_to :explorer
  belongs_to :friendship
end
