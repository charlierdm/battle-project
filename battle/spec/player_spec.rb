require 'player'

describe Player do
  subject(:adam) { Player.new('adam') }

  describe "#initialize" do
    it 'returns the player name' do
      expect(adam.name).to eq('adam')
    end
  end
end
