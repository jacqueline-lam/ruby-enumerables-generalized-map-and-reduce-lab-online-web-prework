def map(array) 
  new_array = []
  i = 0
  while i < array.length 
    new_array.push(yield(array[i]))
    i += 1
  end
  new_array
end 

def reduce(array, starting_value=nil) 
  #starting value default as nil until we explicitly give it a value
  #condition to check if we have a starting value
  if starting_value
    sum = starting_value
    i = 0 #to inc. all ele in array
  else
    sum = array[0] #store ele inside sum
    i = 1 #already dealt with 1st ele
  end
  
  while i < array.length
    #pass num1 and each ele to this block with yield keyword
    # to pass two data to the block, called on our reduce method 
    # pass in sum (sv or array[0]), add sum to next ele in array and redefine sum 
    sum = yield(sum, array[i])
    i += 1
  end
  #give reduce method the return value of the sum  
  sum
end
  