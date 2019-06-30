require 'rails_helper'

RSpec.describe Unit, type: :model do
  before(:all) do
    @unit_category1 = create(:unit_category)
  end

  it "is valid with valid attributes" do
    expect(@unit_category1).to be_valid
  end

  it "has a unique name" do
    unit_category2 = build(:unit_category)
    expect(unit_category2).to_not be_valid
  end

  it "is not valid without a name" do
    unit_category2 = build(:unit_category, name: nil)
    expect(unit_category2).to_not be_valid
  end
end
