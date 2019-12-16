class User < ApplicationRecord
  has_one :locallect, dependent: :destroy
  has_one :explorer, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :forums, dependent: :destroy
  has_many :comments, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  after_create :data_assignment
  after_create :get_city_img_url
  # before_update :get_city_img_url
  before_save :get_city_img_url, if: :will_save_change_to_base_location?
  # before_update :get_city_img_url, if: :base_location_changed?
  before_update :calculate_age


  # Utilizing pg_search for searching baselocation of locallects
  include PgSearch::Model
  pg_search_scope :search_by_base_location,
    against: [ :base_location ],
  using: {
    tsearch: { prefix: true }
  }
  mount_uploader :photo, PhotoUploader

  acts_as_taggable_on :languages
  acts_as_taggable_on :hobbies
  acts_as_messageable


  # Creating Locallect and Explorer model right after User was created for later linking friendships
  def data_assignment
    Locallect.create(user_id: self.id)
    Explorer.create(user_id: self.id)
  end

  def calculate_age
    unless self.birthday.nil?
      year = Date.today.year - self.birthday.year
      self.age = year
    end
  end

  # through replacement such that User.friendships is possible
  def friendships
    Friendship.joins("JOIN explorers e ON e.id = friendships.explorer_id JOIN locallects l ON l.id = friendships.locallect_id JOIN users ue on ue.id = e.user_id JOIN users ul ON ul.id = l.user_id").where("ue.id = ? OR ul.id = ?", self.id, self.id)
  end
  # through replacement such that User.transactions is possible
  def transactions
    Transaction.joins("JOIN explorers e ON e.id = transactions.explorer_id JOIN locallects l ON l.id = transactions.locallect_id JOIN users ue on ue.id = e.user_id JOIN users ul ON ul.id = l.user_id").where("ue.id = ? OR ul.id = ?", self.id, self.id)
  end

  def get_city_img_url
    BackgroundImageJob.perform_later(self.id)
  end



  #identification for messaging
  def name
    return self.first_name + self.last_name
  end

  def mailboxer_email(object)
    #Check if an email should be sent for that object
    #if true
    return self.email
    #if false
    #return nil
  end
end
