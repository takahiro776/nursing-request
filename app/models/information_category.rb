class InformationCategory < ApplicationRecord
  belongs_to :information
  belongs_to :category
end
