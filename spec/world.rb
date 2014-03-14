class World
  attr_reader(:x, :y, :board) #:step

  def initialize(x, y)
    @x = x
    @y = y
    @board = Array.new(y) {|i| i = Array.new(x) {|e| e = Cell.create(x,y)}}
    #@step = step
  end

end
