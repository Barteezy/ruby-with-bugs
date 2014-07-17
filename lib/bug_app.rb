class Bugs

  def initialize
    @user = {
      name: {
        first: "Elmer",
        last: "Fudd"
      },
      address: {
        street: "1062 Delaware St.",
        city: "Denver",
        "state" => "CO",
        zipcode: 80204
      }
    }
    @state_fish = {
      Hawaii: {name: "Humuhumunukunukuapua'a"},
      California: {name: "Golden Trout"},
      Colorado: {name: "Greenback Cutthroat Trout"},
      Utah: {name: "Bonneville Cutthroat Trout"},
      Wyoming: {name: "Cutthroat Trout"},
      South_Dakota: {name: "Walleye"},
      Nebraska: {name: "Channel Catfish"}
    }
    @states = ["Hawaii","California","Colorado","Utah", "Wyoming","South","Dakota","Nebraska"]
  end

  def greeting
    "Hi, my name is #{@user[:name][:first]} #{@user[:name][:last]}"
  end

  def street_address
    "I live on #{@user[:address][:street]}"
  end

  def state
    "I live in #{@user[:address]["state"]}"
  end

  def zip_code
    "My zipcode is #{@user[:address][:zipcode]}"
  end

  def fish(state)
    @state_fish[state.to_sym][:name]
  end

  def states(letter)
    result = []
    @states.select do |state|
      result << state if state[0] == letter
    end
  end

end