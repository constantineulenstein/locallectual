class Transaction < ApplicationRecord
  belongs_to :locallect
  belongs_to :explorer
end
