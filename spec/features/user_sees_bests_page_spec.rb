require 'rails_helper'


describe "user sees standings page" do
  it "shows standings page" do
    visit '/'

    VCR.use_cassette("bests page view") do
      click_on "Best _____"
    end

    expect(current_path).to eq(bests_path)

    expect(page).to have_content("The Absolute Best ...")
    expect(page).to have_css(".bests")
  end
end
