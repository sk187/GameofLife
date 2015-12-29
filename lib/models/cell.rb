# Cell class that populates spaces in board
class Cell
  attr_accessor :x, :y, :alive
  def initialize(x, y, alive)
    @x = x
    @y = y
    @alive = alive
  end

  def alive?
    @alive ? true : false
  end

  def live
    @alive = true
  end

  def die
    @alive = false
  end
end
