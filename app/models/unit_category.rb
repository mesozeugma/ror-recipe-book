class UnitCategory < DestroyableRecord
  has_many :unit_conversions
  has_many :units, through: :unit_conversions
  has_many :ingredients, through: :unit_conversions

  validates :name, presence: true, uniqueness: true

  def destroyable?
    unit_conversions_count.zero?
  end
end
