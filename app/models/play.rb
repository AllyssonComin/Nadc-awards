class Play < ApplicationRecord
  belongs_to :user
  acts_as_votable
  include PgSearch::Model
  pg_search_scope :search_filter,
    against: [ :category, :title, :game, :uploader ],
    associated_against: {
      user: [ :nickname ]
     },
    using: {
      tsearch: { prefix: true }
     }
end
