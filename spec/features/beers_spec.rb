require 'rails_helper'

describe "Beer" do

  it "can be created" do

    visit new_beer_path
    fill_in('beer_name', with:'testiolut')

    expect{
      click_button "Create Beer"
    }.to change{Beer.count}.from(0).to(1)

  end

  it "is not created with empty name" do

    visit new_beer_path
    click_button "Create Beer"

    #save_and_open_page
    #expect(current_path).to eq(new_beer_path)
    expect(page).to have_content("New beer")
    expect(page).to have_content("Name can't be blank")
    expect(Beer.count).to eq(0)

  end



end

