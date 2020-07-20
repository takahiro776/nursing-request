class Information < ApplicationRecord
  has_many :images
  has_many :informations_categorys
  has_many :categorys, through: :informations_categorys

  validates :content, presence: true
end
