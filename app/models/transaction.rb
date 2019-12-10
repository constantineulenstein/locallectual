class Transaction < ApplicationRecord
  belongs_to :locallect
  belongs_to :explorer
  geocoded_by :location
  validates :date, :location, presence: true
  after_validation :geocode, if: :will_save_change_to_location?
end
