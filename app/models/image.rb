class Image < ApplicationRecord
  belongs_to :information

  validates :url, presence: true

  mount_uploader :image, ImageUploader
end
