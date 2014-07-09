class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  belongs_to :user

  validates :name, presence: true
  validates :directions, presence: true

  acts_as_taggable
  mount_uploader :photo, PhotoUploader

  def format_directions
    self.directions = directions.split(', ')
  end
end
