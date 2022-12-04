require './hash.rb'

describe "calculate" do 
  it "returns a 64 character output" do
    expect(calculate("Jane pays John 10BTC", "0").length).to eq (64)
  end
  it "returns a different output for a different input" do
    expect(calculate("Jane pays John 10BTC", "0")).not_to eq(calculate("Jane pays Alan 10BTC", "0"))
  end
  it "finds a hash value that has one 0 at the beginning" do
    # Where second argument is start of has value condition
    hash = calculate("Jane pays John 10BTC", "0")
    expect(hash[0,1]).to eq("0")
  end
end
