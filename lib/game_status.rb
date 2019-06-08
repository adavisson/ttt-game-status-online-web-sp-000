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
  WIN_COMBINATIONS.each do |win_combo|
    pos = []
    pos[0] = board[win_combo[0]]
    pos[1] = board[win_combo[1]]
    pos[2] = board[win_combo[2]]
    
    if(pos.all?{ |ex| ex == "X"})
      win_combo
    elsif(pos.all?{ |oh| oh == "O"})
      win_combo
    else
      false
    end
  end
end

def full?(board)
  index = 0
  board.all? do |idx|
    position_taken(board, )
  end
end