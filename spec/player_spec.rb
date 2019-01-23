require 'player'

describe Player do
  let(:player_1) { Player.new('Cat') }
  let(:player_2) { Player.new('Dog') }

  it 'has a name' do
    expect(player_1.name).to eq 'Cat'
  end

  it 'can attack a target' do
    expect{player_1.attack(player_2)}.to change{player_2.hit_points}.by(-10)
  end

end
