require 'rails_helper'


describe "user sees main page" do
  it "shows main page" do
    visit '/'

    expect(page).to have_content("YouHockey?")
    expect(page).to have_link("Current Standings")
  end
end
