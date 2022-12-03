require './hash.rb'

describe "calculate" do 
  it "returns a 64 character output - a hash value" do
    expect(calculate("Jane pays John 10BTC").length).to eq (64)
  end
end
