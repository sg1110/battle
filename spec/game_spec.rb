require 'game'

describe Game do
  let(:dog) { double(:player, receives_damage: true) }

  it 'can attack a target' do
    expect(dog).to receive(:receives_damage)
    subject.attack(dog)
  end
end
