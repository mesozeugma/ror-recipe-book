require 'rails_helper'

RSpec.describe Unit, type: :model do
  before(:all) do
    @unit1 = create(:unit)
  end

  it "is valid with valid attributes" do
    expect(@unit1).to be_valid
  end

  it "has a unique name" do
    unit2 = build(:unit, symbol: "m")
    expect(unit2).to_not be_valid
  end

  it "has a unique symbol" do
    unit2 = build(:unit, name: "meter")
    expect(unit2).to_not be_valid
  end

  it "is not valid without a name" do
    unit2 = build(:unit, name: nil)
    expect(unit2).to_not be_valid
  end

  it "is not valid without a symbol" do
    unit2 = build(:unit, symbol: nil)
    expect(unit2).to_not be_valid
  end
end
