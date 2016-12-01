require('rspec')
require('user')

describe(User) do
  describe('#initialize') do
    it "will fetch the name" do
      test_user = User.new(:name => 'Kevin')
      expect(test_user.name()).to(eq('Kevin'))
    end
  end
end
