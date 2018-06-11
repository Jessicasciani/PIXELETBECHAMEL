class PortfolioPhoto < ApplicationRecord
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader

  belongs_to :folder
end
