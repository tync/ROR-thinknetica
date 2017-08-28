class Station
  attr_reader :trains, :name, :train_type

  def initialize(name)
    @name = name
    @trains = []
    @train_type = Hash.new(0)
  end

  def take_train(train)
    @trains << train
    @train_type[train.type] += 1
  end

  def send_train(train)
    @trains.delete(train)
    @train_type[train.type] -= 1 
  end

  def trains_by_type(type)
    @trains.select { |train| train.type == type }
  end
end