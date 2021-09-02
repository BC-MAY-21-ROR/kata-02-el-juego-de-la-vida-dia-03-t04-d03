require 'rspec'
require_relative 'game.rb'

describe Cell do
  cell = Cell.new(8, 8)
  describe '.alive?' do
    it "it doesn't shows a live cell" do
      expect(cell.alive?).to eq false
    end

    it 'it shows a alive cell?' do
      cell.live
      expect(cell.alive?).to eq true
    end

    it 'it shows a death cell' do
      expect(cell.kill).to eq '.'
    end

    it 'It show live cell' do
      expect(cell.live).to eq '*'
    end
  end
end
