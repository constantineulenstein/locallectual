class User < ApplicationRecord
  include Filterable

  has_one :locallect, dependent: :destroy
  has_one :explorer, dependent: :destroy
  has_many :messages, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  after_create :data_assignment
  # Utilizing pg_search for searching baselocation of locallects

  after_create :get_city_img_url

  after_update :get_city_img_url, if: :saved_change_to_base_location?
  include PgSearch::Model
  pg_search_scope :search_by_base_location,
    against: [ :base_location ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
  mount_uploader :photo, PhotoUploader

  acts_as_taggable_on :languages


  # Creating Locallect and Explorer model right after User was created for later linking friendships
  def data_assignment
    Locallect.create(user_id: self.id)
    Explorer.create(user_id: self.id)
  end

  # through replacement such that User.friendships is possible
  def friendships
    # Friendship.joins({ locallect: :user }, { explorer: :user }).where(users: { id: self.id })

    # fl = Friendship.joins({ locallect: :user }).where(users: { id: self.id })
    # fe = Friendship.joins({ explorer: :user }).where(users: { id: self.id })
    Friendship.joins("JOIN explorers e ON e.id = friendships.explorer_id JOIN locallects l ON l.id = friendships.locallect_id JOIN users ue on ue.id = e.user_id JOIN users ul ON ul.id = l.user_id").where("ue.id = ? OR ul.id = ?", self.id, self.id)
  end
  # through replacement such that User.transactions is possible
  def transactions
    Transaction.joins("JOIN explorers e ON e.id = transactions.explorer_id JOIN locallects l ON l.id = transactions.locallect_id JOIN users ue on ue.id = e.user_id JOIN users ul ON ul.id = l.user_id").where("ue.id = ? OR ul.id = ?", self.id, self.id)
  end

  def get_city_img_url
    # puts "-" * 200
    unless self.base_location.nil?
      location = self.base_location.downcase
      # extracts location from instance

      url = open("https://api.unsplash.com/search/photos?page=1&query=#{location}&per_page=1&client_id=#{ENV['UNSPLASH_URL']}").read
      results = JSON.parse(url)
      # resultant image from unsplash api
      if results['results'] == []
        api_image = "http://www.chsn.org.au/wp-content/uploads/2016/03/people-helping-people1.jpg"

        uploaded = Cloudinary::Uploader.upload(api_image)
        self.update!(city_image: uploaded["url"])

        # uploads image from api to cloudinary and grabs url
      else
        api_image = results['results'][0]['urls']['regular']
        # passes photo obtained from api to view as long as there is a result to pass

        uploaded = Cloudinary::Uploader.upload(api_image)
        self.update!(city_image: uploaded["url"])
        # uploads image from api to cloudinary and grabs url
      end
    end
  end
end
