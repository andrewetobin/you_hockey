require 'rails_helper'


describe "user sees standings page" do
  it "shows standings page" do
    visit '/'

    VCR.use_cassette("standings page view") do
      click_on "Current Standings"
    end

    expect(current_path).to eq(standings_path)

    expect(page).to have_content("Conference")
    expect(page).to have_content("Division")
    expect(page).to have_content("Team")
    expect(page).to have_content("Wins")
    expect(page).to have_content("Losses")
    expect(page).to have_content("Percentage")
  end
end
