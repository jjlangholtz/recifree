class User < ActiveRecord::Base
  has_many :recipes

  validates :name, presence: true,
                   uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
end
