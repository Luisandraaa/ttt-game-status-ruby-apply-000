# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  #TOP ROW
  [3,4,5],  #MIDDLE row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def won?(board)
  win_combination_1 = win_combination[0]
  win_combination_2 = win_combination[1]
