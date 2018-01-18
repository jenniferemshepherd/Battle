require "player"

describe Player do
  subject(:player_1) { described_class.new("Jennifer") }
  subject(:player_2) { described_class.new("Chris") }

  describe "#initialize" do
    it "should return player_1 name as Jennifer" do
      expect(player_1.name).to eq("Jennifer")
    end

    it "has default HP" do
      expect(player_1.hp).to eq Player::DEFAULT_HP
    end
  end

  describe "#receive_damage" do
    it 'decreases player_1 default slap HP when hit' do
      expect{ player_1.receive_damage }.to change{ player_1.hp }
    end
  end

  describe "#lost" do
    it 'knows the player has 0 HP' do
      10.times { player_1.receive_damage }
      expect(player_1).to be_knocked_out
    end
  end

  describe "#poison" do
    it 'sets status to be poisoned' do
      player_1.poison
      expect(player_1).to be_poisoned
    end
  end

end
