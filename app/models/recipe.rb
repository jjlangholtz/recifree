class Recipe < ActiveRecord::Base
  acts_as_taggable

  validates :name, presence: true
  validates :directions, presence: true

  mount_uploader :photo, PhotoUploader
end
