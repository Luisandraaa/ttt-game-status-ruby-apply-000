# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  #TOP ROW
  [3,4,5],  #MIDDLE ROW
  [6,7,8],  #BOTTOM ROW
  [0,3,6],  #LEFT ROW
  [1,4,7],  #MIDDLE VERTICAL ROW
  [2,5,8],  #RIGHT ROW
  [0,4,8],  #DIAGNAL left
  [6,4,2]  #DIAGNOL right
]
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combo
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combo
  end
end
  return false
  end

  def full?(board)
   board.all? do |index|
     index == "X" || index =="O"
   end
 end

 def draw?(board)
