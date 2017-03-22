class Product < ApplicationRecord
  has_many :photos
  belongs_to :size

  accepts_nested_attributes_for :photos
end
