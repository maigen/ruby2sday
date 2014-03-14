require 'rspec'
require 'cell'
require 'world'


describe World do
  describe 'initialize' do
    it 'initializes the World class' do
      test_world = World.new(100, 100)
      test_world.should be_an_instance_of World
    end

    it 'creates a board' do
      test_world = World.new(10, 10)
      test_world.board.length.should eq 10
    end
  end
end

describe Cell do
  before do
    Cell.clear
  end

  describe 'initialize' do
    it 'initializes a new Cell instance' do
      test_cell = Cell.new(1, 1)
      test_cell.should be_an_instance_of Cell
    end
  end

  describe '.create' do
    it 'creates a new Cell instance' do
      test_cell = Cell.create(2, 2)
      test_cell.should be_an_instance_of Cell
    end
  end

  describe '.all' do
    it 'is created and initialized with an empty array of cells' do
      Cell.all.should eq []
    end
  end

  describe '.clear' do
    it 'empties the array each turn' do
      test_cell = Cell.new(3, 3)
      Cell.clear.should eq []
    end
  end


  describe 'status' do
    it 'establishes all cells are dead until game starts' do
      test_cell = Cell.new(2, 2)
      test_cell.status.should eq false
    end
  end

  describe 'neighbor' do
    it 'can determine the cells adjacent to it' do
      test_cell = Cell.new(2,2)
      test_cell.neighbor.should eq [[1,1], [2,1], [3,1], [1,2], [1,3], [2,3], [3,3], [3,2]]
    end
  end
end

