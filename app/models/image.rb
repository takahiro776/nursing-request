class Image < ApplicationRecord
  belongs_to :information

  validates :url, presence: true

  mount_uploader :url, ImageUploader
end
