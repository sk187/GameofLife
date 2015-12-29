require 'spec_helper'

describe World do
  before { @world = World.new(6, 6) }

  describe '.initialize' do
    it 'should respond to the following methods'do
      expect(@world).to respond_to(:width)
      expect(@world).to respond_to(:length)
      expect(@world).to respond_to(:board)
      expect(@world).to respond_to(:vis_board)
    end
  end

  describe '.create_board' do
    before { @world.create_board }

    it 'should have 6 rows' do
      expect(@world.board.length).to eql(6)
    end

    it 'should have 6 colums' do
      expect(@world.board[0].length).to eql(6)
    end

    it 'should have . for each cell space' do
      @world.board.each do |row|
        row.each do |col|
          expect(col).to eql('.')
        end
      end
    end
  end

  describe '.populate_board' do
    before { @world.populate_board }
    context 'before populating' do
      it 'should have cells with .' do
        @world.board.each do |row|
          row.each do |cell|
            expect(cell).to eql('.')
          end
        end
      end
    end

    context 'after populating' do
      it 'should puts cells for each spot' do
        @world.board.each do |row|
          row.each do |cell|
            expect(cell).to be_a Cell
          end
        end
      end
    end
  end

  describe '.vis_board' do
    before(:example) do
      @world.create_board
      @world.populate_board
      @world.gen_pic_board
    end

    context 'when all cells are dead' do
      it 'should put 6 rows with 6 cols of x' do
        @world.vis_board.each do |row|
          expect(row).to eql('xxxxxx')
        end
      end
    end
  end

  describe '.print' do
    before(:example) do
      @world.create_board
      @world.populate_board
      @world.gen_pic_board
    end
    context 'when all cells are dead' do
      it 'should print 6 rows with 6 cols of x' do
        @world.vis_board.each do |row|
          expect(row).to eql('xxxxxx')
        end
      end
    end
  end
end
