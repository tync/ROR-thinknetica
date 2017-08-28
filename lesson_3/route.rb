class Route
  attr_reader :route

  def initialize(first, last)
    @route = [first]
    @route << last
  end

  def add(station)
    @route.insert(-2, station)
    @route.uniq
  end

  def delete(station)
    if station != @route.first && station != @route.last
      @route.delete(station)
    end
  end

end
