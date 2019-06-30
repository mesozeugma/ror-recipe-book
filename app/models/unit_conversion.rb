class UnitConversion < DestroyableRecord
  scope :base, -> {where(rate: 0)}

  belongs_to :unit, counter_cache: true
  belongs_to :unit_category, counter_cache: true
  has_many :ingredients

  validates :rate, presence: true
  validates :unit_id, presence: true, uniqueness: {scope: :unit_category_id}
  validates :unit_category_id, presence: true
  validate :category_base_unit

  def to_label
    "#{unit_category.name} (#{unit.symbol})"
  end

  def category_base_unit
    if base_unit_exists
      errors.add :rate, I18n.t('errors.messages.category_base_unit_already_exists') if base?
    elsif !base?
      errors.add :rate, I18n.t('errors.messages.category_base_unit_not_exists')
    end
  end

  def base?
    rate.zero?
  end

  def destroyable?(category_count = count_for_category)
    ingredients_count.zero? && (!base? || category_count == 1)
  end

  private

  def base_unit_exists
    UnitConversion.base.where(unit_category_id: unit_category_id).any?
  end

  def can_destroy?
    if base? && count_for_category > 1
      errors.add :destroy, I18n.t('errors.messages.category_base_unit_delete')
      throw :abort
    end
  end

  def count_for_category
    UnitConversion.where(unit_category_id: unit_category_id).count
  end
end
