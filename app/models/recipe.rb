class Recipe < ApplicationRecord
  belongs_to :user
  has_many :required_ingredients, dependent: :destroy
  has_many :ingredients, through: :required_ingredients

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :user_id, presence: true
end
