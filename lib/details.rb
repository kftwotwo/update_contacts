class Detail
  @@info = []
  attr_reader(:address, :home_phone, :cell_phone, :email, :id_detail)

  def initialize(attributes)
    @address = attributes.fetch(:address)
    @home_phone = attributes.fetch(:home_phone)
    @cell_phone = attributes.fetch(:cell_phone)
    @email = attributes.fetch(:email)
    @id_detail = @@info.length + 1
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

  def id_detail
    @id_detail
  end

  define_singleton_method(:find) do |id_detail|
    found_detail_id = nil
    @@info.each do |personal_info|
      if personal_info.id_detail() == id_detail
        found_detail_id = personal_info
      end
    end
    found_detail_id
  end

end
