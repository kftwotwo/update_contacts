class Detail
  attr_reader(:address)
  def initialize(attributes)
    @address = attributes.fetch(:address)
  end
end
