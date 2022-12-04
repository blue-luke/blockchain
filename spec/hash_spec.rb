require './hash.rb'

describe "calculate" do 
  it "returns a 64 character output" do
    expect(calculate("Jane pays John 10BTC").length).to eq (64)
  end
  it "returns a different output for a different input" do
    expect(calculate("Jane pays John 10BTC")).not_to eq(calculate("Jane pays Alan 10BTC"))
  end
  it "finds a hash value that has one 0 at the beginning" do
    # Where second argument is number of zeroes at beginning
    hash = calculate("Jane pays John 10BTC", 1)
    expect(hash[0,1]).to eq("0")
  end
end
