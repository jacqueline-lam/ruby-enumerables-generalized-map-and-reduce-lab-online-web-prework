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
  if starting_value
    sum = sv
    i = 0
  else
    sum = array[0]
    i = 1
  end
  
  while i < array.length
    #pass num1 and each ele to this block with yield keyword
    #loop over array, pass in value of sum (sv or num1)
    sum = yield(sum, array[i])
  end
    
  
end
  
  
###
describe 'my own reduce' do
  it "returns a running total when not given a starting point" do
    source_array = [1,2,3]
    expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
  end

  it "returns a running total when given a starting point" do
    source_array = [1,2,3]
    starting_point = 100
    expect(reduce(source_array, starting_point){|memo, n| memo + n}).to eq(106)
  end

  it "returns true when all values are truthy" do
    source_array = [1, 2, true, "razmatazz"]
    expect(reduce(source_array){|memo, n| memo && n}).to be_truthy
  end

  it "returns false when any value is false" do
    source_array = [1, 2, true, "razmatazz", false]
    expect(reduce(source_array){|memo, n| memo && n}).to be_falsy
  end

  it "returns true when a truthy value is present" do
    source_array = [ false, nil, nil, nil, true]
    expect(reduce(source_array){|memo, n| memo || n}).to eq(true)
  end

  it "returns false when no truthy value is present" do
    source_array = [ false, nil, nil, nil]
    expect(reduce(source_array){|memo, n| memo && n}).to eq(false)
  end
end
