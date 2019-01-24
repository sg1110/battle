require 'player'

describe Player do
  let(:player_1) { Player.new('Cat') }
  let(:player_2) { Player.new('Dog') }

  it 'has a name' do
    expect(player_1.name).to eq 'Cat'
  end

  it 'receives damage' do
    srand(6)
    expect{player_1.receives_damage}.to change{player_1.hit_points}.by(-11)
  end

  it 'generates random amount of damage' do
    srand(6)
    expect(player_1.random_damage).to eq 11
    expect(player_1.random_damage).to eq 74
  end
end
