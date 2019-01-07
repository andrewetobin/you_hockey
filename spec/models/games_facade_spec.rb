require 'rails_helper'

describe GamesFacade, type: :model do
  it 'exists' do
    games_facade = GamesFacade.new

    expect(games_facade).to be_a(GamesFacade)
  end

  describe 'instance methods' do
    it 'will retrieve current games' do
      VCR.use_cassette("games facade instance method results") do
        games_facade = GamesFacade.new

        expect(games_facade.results).to be_a(Array)
        expect(games_facade.results[0]).to have_key(:DateTime)
        expect(games_facade.results[0]).to have_key(:AwayTeam)
        expect(games_facade.results[0]).to have_key(:HomeTeam)

      end
    end
  end
end
