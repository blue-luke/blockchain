require './hash.rb'

describe "calculate" do 
  it "returns a 64 character output" do
    expect(calculate("Jane pays John 10BTC", 1).length).to eq (64)
  end
  it "returns a different output for a different input" do
    expect(calculate("Jane pays John 10BTC", 1)).not_to eq(calculate("Jane pays Alan 10BTC", 1))
  end
  it "returns a different output with the same input string but a different nonce" do
    expect(calculate("Jane pays John 10BTC", 1)).not_to eq(calculate("Jane pays John 10BTC", 2))
  end
end
