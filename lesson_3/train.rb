class Train
  attr_reader :speed, :wagons, :type
  
  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
    @route = []
    @position = 0
  end

  def speed_up(n)
    @speed += n
  end

  def stop
    @speed = 0
  end

  def attach
    @wagons += 1 if @speed == 0
  end

  def uncouple
    @wagons -= 1 if @speed == 0 && @wagons > 0
  end

  def set_route(route)
    @route = route.route
  end

  def forward
    @position += 1 if @route[@position +1]
  end

  def backward
    @position -= 1 if @position != 0
  end

  def next_station
    @route[@position +1] if @route[@position +1]
  end

  def current_station
    @route[@position]
  end

  def back_station
    @route[@position -1] if @position != 0
  end
end