require 'rails_helper'

RSpec.describe Family, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "has a father and a mother name" do
    expect(Family.attribute_names).to include("father_name", "mother_name")

  end

  it "is invalid without mother or father name long enough" do
    family=Family.new
    expect {family.valid?}.to(
      change{family.errors[:father_name]}.from([]).
      and change{family.errors[:mother_name]}.from []
    )
    [:father_name, :mother_name].each do |name|
      family.send name.to_s+"=", "S"
      family.valid?
      expect(family.errors[name].select{|e| e.match "is too short"}).not_to be_empty
      family.send name.to_s+"=", "Sy"
      family.valid?
      expect(family.errors[name].select{|e| e.match "is too short"}).to be_empty
    end
  end


end
