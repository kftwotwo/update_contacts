class User
  attr_reader(:name)
@@users_arr = []
  def initialize(attributes)
    @name = attributes.fetch(:name)
  end

  def save
    @@users_arr.push(self)
  end

  define_singleton_method(:clear) do
    @@users_arr = []
  end

  define_singleton_method(:all) do
    @@users_arr
  end
end
