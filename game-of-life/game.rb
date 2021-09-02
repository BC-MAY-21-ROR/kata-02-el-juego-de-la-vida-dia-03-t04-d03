class Cell
  def initialize(row, column)
    @position_x = row
    @position_y = column
    @alive = false
    @sign = '.'
  end

  def alive?
    @alive
  end

  def kill
    @alive = false
    @sign = '.'
  end

  def live
    @alive = true
    @sign = '*'
  end

  def print_sign
    @sign
  end
end

class Game
  attr_accessor :grid, :grid_length, :cell_initial_quantity

  def initialize(arr_size)
    @grid = Array.new(arr_size) { Array.new(arr_size) { nil } }
    @grid_length = grid.length
    @cell_initial_quantity = grid_length * 2
  end

  def init
    populate_grid
    born_initial_cells
    display_grid
  end

  def populate_grid
    grid_length.times do |row|
      grid_length.times do |column|
        grid[row][column] = Cell.new(row, column)
      end
    end
  end

  def born_initial_cells
    cell_initial_quantity.times do
      row = rand(0...grid_length)
      column = rand(0...grid_length)
      grid[row][column].live
    end
  end

  def display_grid
    test = ''
    grid_length.times do |row|
      grid_length.times do |column|
        test += "#{grid[row][column].print_sign}|"
      end
      puts test
      test = ''
    end
  end
end

Game.new(8).init
