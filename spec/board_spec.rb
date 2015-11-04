require_relative '../lib/board'
require 'pry'

describe Board do
  let(:valid_board_string) { '1XXX2XXX3XXX4XXX' }

  it 'must be initialized with a string with N2xN2 length' do
    expect { Board.new('1XXX') }.to raise_error 'Invalid Board'
    expect { Board.new(valid_board_string) }.to_not raise_error
  end

  it 'splits the string into an array of arrays' do
    board = Board.new(valid_board_string)
    expect(board.array.length).to be 4
    expect(board.array.first.length).to be 4
  end
end
