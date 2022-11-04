RSpec.describe "not_to method" do
  it "checks that two values do not match" do
    expect(5).not_to eq(10)
    expect([1,2,3]).not_to eq([1,2,3,4])
    expect(10).not_to equal(5)
    expect([1,2,3]).not_to equal([1,2,3])
    expect(10).not_to be(5)
    expect("Hello").not_to be("hello")
    expect(nil).not_to be_truthy
    expect(false).not_to be_truthy
    expect(10).not_to be_falsy
  end
end