class Address
  attr_reader :cinema_id, :street, :number, :city, :state, :country, :zip_code

  def initialize(cinema_id:, street:, number:, city:, state:, country:, zip_code:)
    @cinema_id = cinema_id
    @street = street
    @number = number
    @city = city
    @state = state
    @country = country
    @zip_code = zip_code
  end

  def summary
    "#{street}, #{number} - #{city} - #{state}"
  end
end
