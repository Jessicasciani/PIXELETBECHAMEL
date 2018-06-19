class Folder < ApplicationRecord
  has_many :portfolio_photos
  mount_uploader :photo, PhotoUploader
end
