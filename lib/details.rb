class Detail
  attr_reader(:address, :home_phone, :cell_phone, :email)
  @@info = []

  def initialize(attributes)
    @address = attributes.fetch(:address)
    @home_phone = attributes.fetch(:home_phone)
    @cell_phone = attributes.fetch(:cell_phone)
    @email = attributes.fetch(:email)
  end

  define_singleton_method(:all) do
    @@info
  end

  def save_to_info
    @@info.push(self)
  end

  define_singleton_method(:clear) do
    @@info = []
  end
end
