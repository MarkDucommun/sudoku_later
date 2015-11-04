require_relative '../lib/board'

describe Board do
  it 'must be initialized with a string with N2xN2 length' do
    expect { Board.new('1XXX') }.to raise_error InvalidBoardError
    expect { Board.new('1XXX1XXX1XXX1XXX') }.to_not raise_error
  end
end
