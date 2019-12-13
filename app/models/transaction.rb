class Transaction < ApplicationRecord
  belongs_to :locallect
  belongs_to :explorer
  geocoded_by :location
  validates :date, :location, presence: true
  after_validation :geocode, if: :will_save_change_to_location?

  def users
    User.joins("LEFT JOIN explorers e ON e.user_id = users.id LEFT JOIN locallects l ON l.user_id = users.id LEFT JOIN transactions te ON te.explorer_id = e.id LEFT JOIN transactions tl ON tl.locallect_id = l.id ").where("te.id = ? OR tl.id = ?", self.id, self.id).uniq
  end
end
