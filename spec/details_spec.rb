require "./lib/details"
require "rspec"

describe(Detail) do
  describe("#intialize") do
    it "will return address, home_phone" do
      test_detail = Detail.new({:address => "2915 hwy 78", :home_phone => "123-456-7890"})
      expect(test_detail.address()).to(eq("2915 hwy 78"))
      expect(test_detail.home_phone()).to(eq("123-456-7890"))
    end
  end
end
