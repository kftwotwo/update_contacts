require "./lib/details"
require "rspec"

describe(Detail) do
  describe("#intialize") do
    it "will return address, home_phone, cell_phone, email" do
      test_detail = Detail.new({:address => "2915 hwy 78", :home_phone => "123-456-7890", :cell_phone => '321-654-0987', :email => "john@gmail.com"})
      expect(test_detail.address()).to(eq("2915 hwy 78"))
      expect(test_detail.home_phone()).to(eq("123-456-7890"))
      expect(test_detail.cell_phone()).to(eq("321-654-0987"))
      expect(test_detail.email()).to(eq("john@gmail.com"))
    end
  end

  describe(".all")do
    it "the info array should be empty" do
      expect(Detail.all()).to(eq([]))
    end
  end

  describe("#save_to_info") do
    it "will push to info array" do
      test_detail = Detail.new({:address => "2915 hwy 78", :home_phone => "123-456-7890", :cell_phone => '321-654-0987', :email => "john@gmail.com"})
      expect(test_detail.save_to_info()).to(eq([test_detail]))
    end
  end

  describe(".clear") do
    it "will clear the array" do
        test_detail = Detail.new({:address => "2915 hwy 78", :home_phone => "123-456-7890", :cell_phone => '321-654-0987', :email => "john@gmail.com"}).save_to_info()
        expect(Detail.clear()).to(eq([]))
    end
  end

  describe(".find") do
    it "will find the id of each inputed detail" do
        test_detail = Detail.new({:address => "2915 hwy 78", :home_phone => "123-456-7890", :cell_phone => '321-654-0987', :email => "john@gmail.com"})
        test_detail.save_to_info()
        test_detail2 = Detail.new({:address => "2915 hwy 78", :home_phone => "123-456-7890", :cell_phone => '321-654-0987', :email => "john@gmail.com"})
        test_detail2.save_to_info()
        expect(Detail.find(test_detail2.id_detail())).to(eq(test_detail2))
    end
  end
end
