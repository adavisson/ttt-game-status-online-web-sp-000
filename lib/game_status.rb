# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.any? do |win_combo|
    if((win_combo.all?{|idx| position_taken(board,idx)} &&
      board[win_combo[0]] == "X" && board[win_combo[1]] == "X" &&
      board[win_combo[0]] == "X") || (win_combo.all?{|idx| position_taken(board,idx)} &&
      board[win_combo[0]] == "O" && board[win_combo[1]] == "O" &&
      board[win_combo[0]] == "O"))
      win_combo
    else
      nil
  end
end