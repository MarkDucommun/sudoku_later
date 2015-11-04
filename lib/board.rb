class Board
  def initialize(board_string)
    fail 'Invalid Board' unless valid_board_length?(board_string.length)
  end

  private

  def valid_board_length?(board_length)
    Math.sqrt(Math.sqrt(board_length)) % 1 == 0
  end
end
