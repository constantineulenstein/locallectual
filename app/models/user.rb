class User < ApplicationRecord
  has_one :locallect, dependent: :destroy
  has_one :explorer, dependent: :destroy
  has_many :messages, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  after_create :data_assignment
  # Utilizing pg_search for searching baselocation of locallects
  include PgSearch::Model
  pg_search_scope :search_by_base_location,
    against: [ :base_location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  # Creating Locallect and Explorer model right after User was created for later linking friendships
  def data_assignment
    Locallect.create(user_id: self.id)
    Explorer.create(user_id: self.id)
  end

  # through replacement such that User.friendships is possible
  def friendships
    Friendship.joins([{ locallect: :user }, { explorer: :user }]).where(users: { id: self.id })
  end
  # through replacement such that User.transactions is possible
  def transactions
    Transaction.joins([{ locallect: :user }, { explorer: :user }]).where(users: { id: self.id })
  end

end
