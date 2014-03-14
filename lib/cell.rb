class Cell

@@all_cells = []

attr_reader(:status, :x, :y)

  def initialize(x, y)
    @x = x
    @y = y
    # @xy = xy
  end

  def Cell.create(x, y)
    new_cell = Cell.new(x, y)
    @@all_cells << new_cell
    new_cell
  end

  def Cell.all
    @@all_cells
  end

  def Cell.clear
    @@all_cells = []
  end

  def status
    @status = false
  end

  def neighbors(x,y)
    neighbors = [[cell.x == self.x-1 && cell.y == self.y-1],
                  [cell.x == self.x && cell.y == self.y-1]
hard code all neighbors
(maybe push into hash to access easier?)
loop through .neighbors
 is each neighbor is true (alive) or false (dead) then do (x)
  end

end




