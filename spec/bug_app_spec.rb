require "bug_app"
require "rspec"

describe Bugs do

  before do
    @bug = Bugs.new
  end

  it "should return a greeting" do

    expect(@bug.greeting).to eq("Hi, my name is Elmer Fudd")
  end

  it "should return street address" do
    expect(@bug.street_address).to eq("I live on 1062 Delaware St.")
  end

  it "should return the state" do
    expect(@bug.state).to eq("I live in CO")
  end

  it "should return the zipcode" do

    expect(@bug.zip_code).to eq("My zipcode is 80204")
  end

  it "should return the correct state fish" do

    expect(@bug.fish("Hawaii")).to eq("Humuhumunukunukuapua'a")
  end

  it "should return an array with the states starting with a specific letter" do
    expect(@bug.states("C")).to eq(["California", "Colorado"])
  end

end