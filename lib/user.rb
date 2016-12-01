class User
  attr_reader(:name)
@@users_arr = []
  def initialize(attributes)
    @name = attributes.fetch(:name)
  end

  def save
    @@users_arr.push(self)
  end
end
