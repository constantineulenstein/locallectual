class Friendship < ApplicationRecord
  belongs_to :locallect
  belongs_to :explorer
  has_many :messages
  has_many :transactions
  # make sure that you can not have a friendship that already exists
  validates :locallect_id, uniqueness: {scope: :explorer_id}

  def users
    User.joins("LEFT JOIN explorers e ON e.user_id = users.id LEFT JOIN locallects l ON l.user_id = users.id LEFT JOIN friendships fe ON fe.explorer_id = e.id LEFT JOIN friendships fl ON fl.locallect_id = l.id ").where("fe.id = ? OR fl.id = ?", self.id, self.id)
  end
end
