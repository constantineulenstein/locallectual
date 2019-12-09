class Forum < ApplicationRecord
  has_many :comments, dependent: :destroy
  acts_as_taggable_on :languages

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [ :location ],
  using: {
    tsearch: { prefix: true }
  }
end
