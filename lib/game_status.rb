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
  WIN_COMBINATIONS.each do |win_combination|
<<<<<<< HEAD
    win_index1 = win_combination[0]
    win_index2 = win_combination[1]
    win_index3 = win_combination[2]
    position_1 = board[win_index1]
    position_2 = board[win_index2]
    position_3 = board[win_index3]
    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index1)
      return win_combination
    end
  end
  nil
=======
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    ## lets say the first time, win_combination is [0, 1, 2]
    
    ## how can we check what the values of the board are at each of the places of THAT combination
    position_1 = board[win_index1]
    position_2 = board[win_index2]
    position_3 = board[win_index3]
  ## now test them as equal to each other?
    if position_1 == postion_2 && position_2 == positon_3 && position_3 != " "
      return win_combination
    end
  end  
>>>>>>> b4d24c5eb04895f241d411b1693e7aad11d136b1
end



<<<<<<< HEAD
def full?(board)
  i = 0
  while i < 9
    if position_taken?(board, i)
    else
      return nil
    end
    i += 1
  end
  position_taken?(board, 0)
=======
def full?(full_board)
  spots = true
  full_board.each do |spot|
    if position_taken?(full_board, spot)
    else
      spots = false
    end
  end
>>>>>>> b4d24c5eb04895f241d411b1693e7aad11d136b1
end
 
 
    
<<<<<<< HEAD
def draw?(board)
  if won?(board)
    return nil
  elsif full?(board)
    return true
  else
    return nil
  end
end


def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return nil
  end
end


def winner(board)
  if won?(board) == nil
    return nil
  else
    token = board[won?(board)[0]]
    return token
  end
=======
def draw?
  
>>>>>>> b4d24c5eb04895f241d411b1693e7aad11d136b1
end