require 'rspec'
require_relative 'game.rb'

describe Cell do
  cell = Cell.new(8, 8)
  describe '.alive?' do
    it "it doesn't shows a live cell" do
      expect(!cell.live?).to eq false
    end

    it 'it shows a alive cell?' do
      expect(cell.live?).to eq true
    end

    it 'it shows a death cell' do
      expect(!cell.death?).to eq true
    end

    it 'it shows a death cell' do
      expect(cell.death?).to eq false
    end
  end
end
