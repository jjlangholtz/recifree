class Recipe < ActiveRecord::Base
  validates :name, presence: true
  validates :directions, presence: true

  mount_uploader :photo, PhotoUploader
end
