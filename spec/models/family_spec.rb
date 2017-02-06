require 'rails_helper'

RSpec.describe Family, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "has a father and a mother name" do
    expect(Family.attribute_names).to include("father_name", "mother_name")

  end
  it "is invalid without mother or father name"

  
end
