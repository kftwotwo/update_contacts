class User
  attr_reader(:name)

  def initialize(attributes)
    @name = attributes.fetch(:name)
  end

end