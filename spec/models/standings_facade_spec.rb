require 'rails_helper'

describe StandingsFacade, type: :model do
  it 'exists' do
    standings_facade = StandingsFacade.new

    expect(standings_facade).to be_a(StandingsFacade)
  end

  describe 'instance methods' do
    it 'examples' do
      VCR.use_cassette("instance method results") do
        standings_facade = StandingsFacade.new

        expect(standings_facade.results).to be_a(Array)
        expect(standings_facade.results.count).to eq(31)
        expect(standings_facade.results[0]).to have_key(:City)
        expect(standings_facade.results[0]).to have_key(:Name)
        expect(standings_facade.results[0]).to have_key(:Conference)
        expect(standings_facade.results[0]).to have_key(:Wins)
        expect(standings_facade.results[0]).to have_key(:Losses)
      end
    end
  end
end
