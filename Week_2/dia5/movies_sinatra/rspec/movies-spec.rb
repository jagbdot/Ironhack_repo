require "../server.rb"
require "rspec"
require_relative("../lib/movies.rb")

RSpec.describe "PasswordChecker" do

  let (:movies) { Movies.new }

  describe "Movies" do 
    it "should get an array of all movies according to the user response" do
      expect(movies.check_movies("funny")).to eq(true)
    end
  end
end