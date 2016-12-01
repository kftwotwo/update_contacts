class Detail
  attr_reader(:address, :home_phone, :cell_phone, :email)
  def initialize(attributes)
    @address = attributes.fetch(:address)
    @home_phone = attributes.fetch(:home_phone)
    @cell_phone = attributes.fetch(:cell_phone)
    @email = attributes.fetch(:email)
  end
end
