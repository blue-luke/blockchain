require './hash.rb'

describe "calculate" do 
  it "returns a 64 character output" do
    expect(calculate("Jane pays John 10BTC").length).to eq (64)
  end
  it "returns a different output for a different input" do
    expect(calculate("Jane pays John 10BTC")).not_to eq(calculate("Jane pays Alan 10BTC"))
  end
end
