class Detail
  attr_reader(:address, :home_phone)
  def initialize(attributes)
    @address = attributes.fetch(:address)
    @home_phone = attributes.fetch(:home_phone)
  end
end
