class User < ApplicationRecord
  has_one :locallect
  has_one :explorer
  has_many :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # through replacement
  def friendships
    Friendship.joins([{ locallect: :user }, { explorer: :user }]).where(users: { id: self.id })
  end
  # through replacement
  def transactions
    Transaction.joins([{ locallect: :user }, { explorer: :user }]).where(users: { id: self.id })
  end

end

