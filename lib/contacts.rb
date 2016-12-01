class Contact
  @@people = []
  attr_reader(:name)


  def initialize(attributes)
    @name = attributes.fetch(:name)
  end

  define_singleton_method(:all) do
    @@people
  end
end
