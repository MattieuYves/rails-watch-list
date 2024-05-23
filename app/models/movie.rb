class Movie < ApplicationRecord
  has_many :lists
  has_many :bookmarks

  validates :title, presence: true, allow_blank: false, uniqueness: true
  validates :overview, presence: true, allow_blank: false, uniqueness: true
end

#   should not be able to destroy self if has bookmarks children (FAILED - 13)
