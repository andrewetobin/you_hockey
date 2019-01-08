require 'rails_helper'


describe "user sees standings page" do
  it "shows standings page" do
    visit '/'

    VCR.use_cassette("games page view") do
      click_on "Today's Games"
    end

    expect(current_path).to eq(games_path)

    expect(page).to have_content("Today's Games")
    expect(page).to have_css(".game")
    expect(page).to have_css(".games")
    expect(page).to have_css(".list-games")
    expect(page).to have_content("vs.")
  end
end
