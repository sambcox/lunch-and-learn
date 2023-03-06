class TouristSight
  attr_reader :id, :name, :address, :place_id
  def initialize(data)
    @id = nil
    @name = data[:name]
    @address = get_address(data)
    @place_id = data[:place_id]
  end

  def get_address(data)
    [data[:address_line1], data[:address_line2]].join(', ')
  end
end