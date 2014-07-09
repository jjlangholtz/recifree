class Recipe < ActiveRecord::Base
  has_many :ingredients

  validates :name, presence: true
  validates :directions, presence: true

  acts_as_taggable
  mount_uploader :photo, PhotoUploader

  def format_directions
    self.directions = directions.split(', ')
  end
end
