class DestroyableRecord < ApplicationRecord
  self.abstract_class = true

  before_destroy :can_destroy?

  def destroyable
    true
  end

  private

  def can_destroy?
    throw :abort unless destroyable?
  end
end
