# World class that has the board for the cells to populate
class World
  attr_accessor :width, :length, :board, :vis_board
  def initialize(width, length)
    @width = width
    @length = length
    @board = []
    @vis_board = []
  end

  def create_board
    @width.times do
      @board.push(Array.new(@length, '.'))
    end
    @board
  end

  def populate_board
    @board.each do |row|
      row.each do |col|
        x = row.index(col)
        y = board.index(row)
        cell = Cell.new(x, y, false)
        row[row.index(col)] = cell
      end
    end
  end

  def gen_pic_board
    @board.each do |row|
      vis_row_str = ''
      row.each do |col|
        cell = @board[row.index(col)][board.index(row)]
        cell.alive ? vis_row_str += ('o') : vis_row_str += ('x')
      end
      @vis_board.push(vis_row_str)
    end
  end

  def print_board
    @vis_board.each do |row|
      puts row
    end
  end
end
