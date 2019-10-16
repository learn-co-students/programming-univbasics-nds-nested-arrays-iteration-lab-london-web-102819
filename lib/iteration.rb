# Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
#ingredient_list = [['pepperoni', 'sausage'], ['green olives', 'green peppers'], ['onions', 'pineapple']]
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair

def join_ingredients(src)
  my_food = []
  row_index = 0
  while row_index < src.count do
    row = src[row_index]
    my_food << "I love #{row[0]} and #{row[1]} on my pizza"
    row_index += 1
  end
  return my_food
end


def total_even_pairs(src)
  even_pair_total = 0
  row_index = 0
  while row_index < src.count do
    if src[row_index][0] % 2 == 0 && src[row_index][1] % 2 == 0 
      even_pair_total += src[row_index][0] + src[row_index][1] 
    end
    row_index +=1
  end
  return even_pair_total
end


def find_greater_pair(src)
  greater_pair = []
  row_index = 0
  while row_index < src.count do
    row = src[row_index]
    if row[0] > row[1]
      greater_pair << row[0]
    else
      greater_pair << row[1]
    end
  row_index +=1
  end
 return greater_pair
end

# my_nums = [[2,3],[4,5],[9,9],[10,98]]
