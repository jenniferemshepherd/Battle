require "game"

describe Game do
    subject(:game) { described_class.new }

    describe "#hit" do
      it 'hits player_2 from player_1' do
        player_2 = double("Player")
        expect(player_2).to receive(:receive_damage)
        game.hit(player_2)
      end
    end
end
