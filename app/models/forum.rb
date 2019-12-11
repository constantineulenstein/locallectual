class Forum < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [ :location ],
  using: {
    tsearch: { prefix: true }
  }

  pg_search_scope :search_by_all,
    against: [ :description, :title, :location],
    associated_against: {
      comments: [ :description ]
    },
  using: {
    tsearch: { prefix: true }
  }

  acts_as_taggable_on :languages
end
