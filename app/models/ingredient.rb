class Ingredient < DestroyableRecord
  belongs_to :unit_conversion, counter_cache: true
  has_one :unit, through: :unit_conversion
  has_one :unit_category, through: :unit_conversion
  has_many :required_ingredients
  has_many :recipes, through: :required_ingredients

  validates :name, presence: true, uniqueness: true
  validates :unit_conversion_id, presence: true
  validate :same_unit_category_on_update, on: :update

  def same_unit_category_on_update
    if unit_conversion_id_changed? && different_unit_category
      errors.add :unit_conversion_id, I18n.t('errors.messages.different_unit_category')
    end
  end

  def to_label
    "#{name} (#{unit.symbol})"
  end

  def destroyable?
    required_ingredients_count.zero?
  end

  private

  def different_unit_category
    UnitConversion.where(id: [unit_conversion_id, unit_conversion_id_was]).distinct.count(:unit_category_id) != 1
  end
end
