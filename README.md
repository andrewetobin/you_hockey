YouHockey? README


Visit the deployed site here: https://youhockey.herokuapp.com/


## Overview
This application is designed for the Hockey fan to enjoy a collection of "Best of" videos and information. For example, Best Saves, Best Fights, Best Goals, etc. The app also gives current NHL team standings, along with what games are happening today.  



## Setup

- Fork or clone this repo: `https://github.com/andrewetobin/you_hockey`
- Run `bundle install`
- Sign up for an API key with FantasyData here: https://developer.fantasydata.com/
- Run `bundle exec figaro install` to hide API key. 
- Hide API key in config/application.yml file. 
- Run `rails s` to spin up the server
- Visit `localhost:3000` in your browser.

## Testing
- Run `rspec` for the test suite.
- Run `open coverage/index.html` for the test coverage report.


## Gems

* [Rails-RSpec](https://github.com/rspec/rspec-rails)
* [Launchy](https://github.com/copiousfreetime/launchy)
* [Shoulda-Matchers](https://github.com/thoughtbot/shoulda-matchers)
* [Pry](https://github.com/pry/pry)
* [Figaro](https://github.com/laserlemon/figaro)
* [Capybara](https://github.com/teamcapybara/capybara)
* [SimpleCov](https://github.com/colszowka/simplecov)
* [Faraday](https://github.com/lostisland/faraday)
* [VCR](https://github.com/vcr/vcr)
* [Webmock](https://github.com/bblimke/webmock)
