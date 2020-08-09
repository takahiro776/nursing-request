class Information < ApplicationRecord
  has_many :images
  has_many :information_categories
  has_many :categories, through: :information_categories
  
  validates :content, presence: true
  
  accepts_nested_attributes_for :images, allow_destroy: true
end
