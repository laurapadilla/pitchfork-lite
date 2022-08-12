class Category < ApplicationRecord

  has_many :albums

  validates :title, presence: true, uniqueness: true

end
