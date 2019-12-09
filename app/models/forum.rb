class Forum < ApplicationRecord
  has_many :comments, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [ :location ],
  using: {
    tsearch: { prefix: true }
  }

  pg_search_scope :search_by_all,
    against: [ :mother_tongue],
    associated_against: {
      comments: [ :description ]
    },
  using: {
    tsearch: { prefix: true }
  }

  acts_as_taggable_on :languages
end
