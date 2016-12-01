require "./lib/details"
require "rspec"

describe(Detail) do
  describe("#intialize") do
    it "will return address" do
      test_detail = Detail.new({:address => "2915 hwy 78"})
      expect(test_detail.address()).to(eq("2915 hwy 78"))
    end
  end
end
