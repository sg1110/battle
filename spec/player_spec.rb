require 'player'

describe Player do
  let(:player_1) { Player.new('Cat') }
  it 'has a name' do
    expect(player_1.name).to eq 'Cat'
  end
end
