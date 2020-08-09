class Category < ApplicationRecord
  has_many :information_categories
  has_many :informations, through: :information_categories
end
