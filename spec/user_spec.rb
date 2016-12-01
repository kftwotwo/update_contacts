require('rspec')
require('user')


describe(User) do
  before :each do
    User.clear
  end
  describe('#initialize') do
    it "will fetch the name" do
      test_user = User.new(:name => 'Kevin')
      expect(test_user.name()).to(eq('Kevin'))
    end
  end

  describe('#save') do
    it "will save the user into an array" do
      test_user = User.new(:name => 'Kevin')
      expect(test_user.save()).to(eq([test_user]))
    end
  end

  describe('.clear') do
    it "will clear the array" do
      test_user = User.new(:name => 'Kevin').save()
      expect(User.clear()).to(eq([]))
    end
  end

  describe(".all") do
    it "will display all users" do
      test_user = User.new(:name => '')
      test_user.save()
      test_user2 = User.new(:name => 'Kevin')
      test_user2.save()
      expect(User.all()).to(eq([test_user, test_user2]))
    end
  end
end
