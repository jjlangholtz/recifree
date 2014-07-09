class User < ActiveRecord::Base
  has_many :recipes

  validates :name, presence: true,
                   format: { with: /\A[a-zA-Z0-9]+\Z/ }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
end
