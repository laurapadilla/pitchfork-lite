class Album < ApplicationRecord

  belongs_to :category

  validates :title, presence: true
  validates :body, presence: true
  validates :artist, presence: true
  validates :release, presence: true


end
