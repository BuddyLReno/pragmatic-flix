require 'spec_helper'

describe "A movie" do
  it "is a flop if the total gross is less than $50M" do
    movie = Movie.new(total_gross: 40000000.00)

    expect(movie.flop?).to be_true
  end

  it "is not a flop if the total gross is more than $50M" do
    movie = Movie.new(total_gross: 60000000.00)

    expect(movie.flop?).to be_false
  end

  it "is a flop if the total gross is blank" do
    movie = Movie.new(total_gross: nil)

    expect(movie.flop?).to be_true
  end
end
