class Movie < ApplicationRecord
  # not sure about the below, since it should only have one list & bookmark pairing (?)
  has_many :lists, through: :bookmarks
  has_many :bookmarks
  # You can’t delete a movie if it is referenced in at
  # least one bookmark => ??????
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
