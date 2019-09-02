 def my_own_map
  
end 

#Pass blocks with methods ->
# bu using yield — accepts an argument 
def add_numbers(num1,num2)
  total = num1 + num2
end

add_numbers(1,2) do |tot|#block variable naemed as tot
  puts "The total is #(t)"
end
  

describe 'my own map' do
  it "returns an array with all values made negative" do
    expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])
  end

  it "returns an array with the original values" do
    dune = ["paul", "gurney", "vladimir", "jessica", "chani"]
    expect(map(dune){|n| n}).to eq(dune)
  end

  it "returns an array with the original values multiplied by 2" do
    expect(map([1, 2, 3, -9]){|n| n * 2}).to eq([2, 4, 6, -18])
  end

  it "returns an array with the original values squared" do
    expect(map([1, 2, 3, -9]){|n| n * n}).to eq([1, 4, 9, 81])
  end
end