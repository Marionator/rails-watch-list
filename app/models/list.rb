class List < ApplicationRecord
  # When you delete a list, you should delete all
  # associated bookmarks (but not the movies as they
  # can be referenced in other lists) => seems to be
  # in the difference btwn :destroy & :delete, with
  # different behaviours in AR
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
end
