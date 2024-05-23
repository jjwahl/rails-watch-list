class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, :dependent => :delete_all
  validates :name, uniqueness: true, presence: true

end
