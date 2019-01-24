require 'game'

describe Game do
  let(:dog) {double(:player, receives_damage: true, hit_points: 0) }
  let(:cat) {double(:player)}
  let(:mouse) {double(:player, hit_points: 10) }
  let(:game) {Game.new(cat,dog)}
  let(:game2) {Game.new(cat,mouse)}

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

  it "Ends the game if one of the players HP is 0" do
    expect(game.game_over?).to eq true
  end

  it "It doesn't end the game if none of the players HP are 0" do
    expect(game2.game_over?).to eq false
  end
end
