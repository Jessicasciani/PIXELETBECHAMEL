class VideoFolder < ApplicationRecord
  has_many :portfolio_motions
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
end
