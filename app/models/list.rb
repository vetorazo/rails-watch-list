class List < ApplicationRecord
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
