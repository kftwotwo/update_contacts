class Detail
  attr_reader(:address, :home_phone, :cell_phone)
  def initialize(attributes)
    @address = attributes.fetch(:address)
    @home_phone = attributes.fetch(:home_phone)
    @cell_phone = attributes.fetch(:cell_phone)
  end
end
