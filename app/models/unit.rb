class Unit < DestroyableRecord
  has_many :unit_conversions
  has_many :unit_categories, through: :unit_conversions
  has_many :ingredients, through: :unit_conversions

  validates :name, presence: true, uniqueness: true
  validates :symbol, presence: true, uniqueness: true

  def destroyable?
    unit_conversions_count.zero?
  end
end
