class Photo < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :product
  belongs_to :exbook
end
