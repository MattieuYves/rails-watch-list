class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, dependent: :destroy, through: :bookmarks

  validates :name, presence: true, allow_blank: false, uniqueness: true
end
