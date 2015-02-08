require 'rails_helper'

describe Beer do

  it "can be created properly" do
    brewery = Brewery.create name:"panimo", year:2000
    beer = Beer.create name:"Olut", brewery_id:brewery.id, style:"olut"

    expect(beer).to be_valid
    expect(Beer.count).to eq(1)
  end

  it "can't be created without name" do
    brewery = Brewery.create name:"panimo", year:2000
    beer = Beer.create brewery_id:brewery.id, style:"olut"

    expect(beer).not_to be_valid
    expect(Beer.count).to eq(0)
  end

  it "can't be created without style" do
    brewery = Brewery.create name:"panimo", year:2000
    beer = Beer.create name:"olut", brewery_id:brewery.id

    expect(beer).not_to be_valid
    expect(Beer.count).to eq(0)
  end

end
