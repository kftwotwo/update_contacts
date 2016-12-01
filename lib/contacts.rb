class Contact
  @@people = []
  attr_reader(:name, :id)


  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = @@people.length + 1
  end

  define_singleton_method(:all) do
    @@people
  end

  def add_contact_to_array
    @@people.push(self)
  end

  define_singleton_method(:clear) do
    @@people = []
  end

  def id
    @id
  end
end
