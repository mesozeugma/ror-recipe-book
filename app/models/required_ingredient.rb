class RequiredIngredient < ApplicationRecord
  before_save :convert_amount

  belongs_to :ingredient, counter_cache: true
  belongs_to :recipe, counter_cache: true
  has_one :unit_conversion, through: :ingredient
  has_one :unit, through: :unit_conversion
  has_one :unit_category, through: :unit_conversion
  has_one :user, through: :recipe

  validates :amount, presence: true
  validates :ingredient_id, presence: true, uniqueness: {scope: :recipe_id}
  validates :recipe_id, presence: true

  def converted_amount
    amount / rate_non_zero
  end

  private

  def rate_non_zero
    unit_conversion.rate.zero? ? 1 : unit_conversion.rate
  end

  def convert_amount
    self.amount = amount * rate_non_zero
  end
end
