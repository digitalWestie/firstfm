require 'test_helper'

class StationTest < ActiveSupport::TestCase
  test "shouldnt save without a name" do
    station = Station.new
    station.homepage_url = "http://myradio.com"
    station.description = "A cool radio station"
    assert !station.save
  end

  test "should save with a name" do
    station = Station.new
    station.name = "blah"
    station.homepage_url = "http://myradio.com"
    station.description = "A cool radio station"
    assert station.save
  end

  test "name should be longer than 1 character" do
    station = Station.new
    station.name = "n"
    station.homepage_url = "http://myradio.com"
    station.description = "A cool radio station"
    assert !station.save
  end
end
