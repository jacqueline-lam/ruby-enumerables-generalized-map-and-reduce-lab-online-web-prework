 def my_own_map
  
end 

# passing in a block to a method
# what is a block?
  # do => end
  # EXAMPLE:
  # [1,2,3].map do |num| #placeholder represents data you're working with inside of the block (each ele of this array)
  #   num + 1 
  # end 


# [1,2,3].map {|num| num+1}

#yield to pass

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