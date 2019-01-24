require 'game'

describe Game do
  let(:dog) {double(:player, receives_damage: true) }
  let(:cat) {double(:player)}
  let(:game) {Game.new(cat,dog)}

  it 'can attack a target' do
    expect(dog).to receive(:receives_damage)
    game.attack(dog)
  end

  it 'Game initializes with player 1 object' do
    expect(game.player_1).to eq cat
  end

  it 'Game initializes with player 2 object' do
    expect(game.player_2).to eq dog
  end

  it "Game starts with players 1 turn" do
    expect(game.turn).to eq cat
  end

  it "Switches players turns" do
    game.switch_turn
    expect(game.turn).to eq dog
  end
end
