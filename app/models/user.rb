class User < ApplicationRecord
  has_one :locallect
  has_one :explorer
  has_many :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  after_create :data_assignment


  def data_assignment
    Locallect.create(user_id: self.id)
    Explorer.create(user_id: self.id)
  end
  # through replacement
  def friendships
    Friendship.joins([{ locallect: :user }, { explorer: :user }]).where(users: { id: self.id })
  end
  # through replacement
  def transactions
    Transaction.joins([{ locallect: :user }, { explorer: :user }]).where(users: { id: self.id })
  end

end
