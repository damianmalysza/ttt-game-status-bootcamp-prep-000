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
    position_1 = win_combo[0]
    position_2 = win_combo[1]
    position_3 = win_combo[2]
    if board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X"
      return win_combo
    elsif board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"
      return win_combo
    else
      return false
    end
  end
end


#board=["O","O","O"," "," "," "," "," "," "]

#won?(board)

def full?(board)
  board.all?{|i| i =="X" || i == "O"}
end
