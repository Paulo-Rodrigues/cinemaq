class Cinema
  attr_reader :name, :rooms

  def initialize(name:)
    @name = name
    @rooms = []
  end
end
