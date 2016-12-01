require("./lib/contacts")
require("rspec")

describe(Contact) do
  describe('#name') do
    it "will return name" do
      test_contact = Contact.new({:name => 'Kevin'})
      expect(test_contact.name()).to(eq("Kevin"))
    end
  end

  describe('.all') do
    it "will return array" do
      expect(Contact.all()).to(eq([]))
    end
  end
end
