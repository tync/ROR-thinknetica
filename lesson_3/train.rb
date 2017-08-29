class Train
  attr_reader :speed, :wagons, :type
  
  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
    @position = 0
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
    route.stations.first.take_train(self)
  end

  def forward
    if @route.stations[@position +1]
      @route.stations[@position].send_train(self)
      @route.stations[@position +1].take_train(self)
      @position += 1
    end
  end

  def backward
    if @position != 0
      @route.stations[@position].send_train(self)
      @route.stations[@position -1].take_train(self)
      @position -= 1
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