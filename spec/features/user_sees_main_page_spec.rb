require 'rails_helper'


describe "user sees main page" do
  it "shows main page" do
    visit '/'

    expect(page).to have_content("YouHockey?")
  end
end
