require './hash.rb'

describe "calculate" do 
  it "returns the string passed to it" do
    expect(calculate("Jane pays John 10BTC")).to eq ("Jane pays John 10BTC")
  end
end