def map(source_array,block)
  #map returns a new array of manipulated elem
  new_array = []
  i = 0
  while i < array.length 
    new_array.push(yield(array[i]))
  end 
  #new_array = sourcearray.map {|num|}
end 
# ArgumentError: given 1= given an argument, but code you wrote isn't expecting an argument, fix by giving map an argument 

# describe 'my own map' do
#   it "returns an array with all values made negative" do
#     expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])
#   end

#   it "returns an array with the original values" do
#     dune = ["paul", "gurney", "vladimir", "jessica", "chani"]
#     expect(map(dune){|n| n}).to eq(dune)
#   end

#   it "returns an array with the original values multiplied by 2" do
#     expect(map([1, 2, 3, -9]){|n| n * 2}).to eq([2, 4, 6, -18])
#   end

#   it "returns an array with the original values squared" do
#     expect(map([1, 2, 3, -9]){|n| n * n}).to eq([1, 4, 9, 81])
#   end
# end