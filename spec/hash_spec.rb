describe "hash function" do 
  it "returns the string passed to it" do
    expect(calculate("Jane pays John 10BTC")).be_kind_of(string)
  end
end