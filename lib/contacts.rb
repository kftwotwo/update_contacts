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

  def add_contact_to_people
    @@people.push(self)
  end

  define_singleton_method(:clear) do
    @@people = []
  end

  def id
    @id
  end

  define_singleton_method(:find) do |id|
    found_person_id = nil
    @@people.each do |person|
      if person.id() == id
        found_person_id = person
      end
    end
    found_person_id
  end
end
