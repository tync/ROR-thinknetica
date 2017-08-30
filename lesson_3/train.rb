class Train
  attr_reader :speed, :wagons, :type
  
  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end

  def speed_up(n)
    @speed += n
    @speed == 0 if @speed < 0
  end

  def stop
    @speed = 0
  end

  def attach_wagon
    @wagons += 1 if @speed == 0
  end

  def uncouple_wagon
    @wagons -= 1 if @speed == 0 && @wagons > 0
  end

  def set_route(route)
    @route = route
    @position = 0
    current_station.take_train(self)
  end

  def forward
    if next_station
      current_station.send_train(self)
      @position += 1
      current_station.take_train(self)
    end
  end

  def backward
    if back_station
      current_station.send_train(self)
      @position -= 1
      current_station].take_train(self)
    end
  end

  def next_station
    @route.stations[@position +1]
  end

  def current_station
    @route.stations[@position]
  end

  def back_station
    @route.stations[@position -1] if @position != 0
  end
end