require "player"

describe Player do
  subject(:player) {described_class.new("Jennifer")}

  it "should return its name Jennifer" do
    expect(player.name).to eq("Jennifer")
  end

end
