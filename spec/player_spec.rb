require "player"

describe Player do
  subject(:player) {described_class.new("Jennifer")}

  it "should return its name Jennifer" do
    expect(player.name).to eq("Jennifer")
  end

  it "has default HP" do
    expect(player.hp).to eq Player::DEFAULT_HP
  end

  describe "#hit" do
    it 'loses default slap HP when hit' do
      expect{ player.hit }.to change{ player.hp }.by(-Player::SLAP)
    end
  end

end
