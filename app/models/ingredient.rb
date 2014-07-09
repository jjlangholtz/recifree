class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  validates :amount, presence: true
  validates :unit, presence: true
  validates :name, presence: true
end
