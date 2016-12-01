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

  describe('#add_contact_to_array') do
    it "will return name" do
      test_contact = Contact.new({:name => 'Kevin'})
      expect(test_contact.add_contact_to_people()).to(eq([test_contact]))
    end
  end

  describe('.clear') do
    it "will clear the array" do
      expect(Contact.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it "will return name" do
      test_contact = Contact.new({:name => 'Kevin', :id => 1})
      expect(test_contact.add_contact_to_people()).to(eq([test_contact]))
    end
  end

  describe('.find') do
    it "will find the id number" do
      test_contact = Contact.new(:name => "Kevin")
      test_contact.add_contact_to_people()
      test_contact2 = Contact.new(:name => "John")
      test_contact2.add_contact_to_people()
      expect(Contact.find(test_contact2.id())).to(eq(test_contact2))
    end
  end
end
