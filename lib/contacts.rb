class Contact
  @@contacts = []
  attr_reader(:name, :id)


  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = @@contacts.length + 1
  end

  define_singleton_method(:all) do
    @@contacts
  end

  def add
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:find) do |id|
    found_contact_id = nil
    @@contacts.each do |contact|
      if contact.id() == id
        found_contact_id = contact
      end
    end
    found_contact_id
  end
end
