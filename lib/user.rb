class User
  @@users_arr = []
  attr_reader(:name, :id_user)

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id_user = @@users_arr.length + 1
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

  def id_user
    @id_user
  end

  define_singleton_method(:find) do |id_user|
    found_user_id = nil
    @@users_arr.each do |name|
      if name.id() == id_user
        found_user_id = name
      end
    end
    found_user_id
  end
end
