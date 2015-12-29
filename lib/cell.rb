class Cell
  attr_accessor :neighbors, :alive
  def def initialize(x, y, alive)
    @x = x
    @y = y
    @alive = alive
  end

  def underpopulation
    "."
  end
end
