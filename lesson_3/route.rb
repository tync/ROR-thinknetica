class Route
  attr_reader :stations

  def initialize(first, last)
    @stations = [first, last]
  end

  def add(station)
    @stations.insert(-2, station)
    @stations.uniq!
  end

  def delete(station)
    if station != @stations.first && station != @stations.last
      @stations.delete(station)
    end
  end
  
end
