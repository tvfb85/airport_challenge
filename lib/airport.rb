require_relative 'plane'

class Airport
MAX_CAPACITY = 20
attr_accessor :capacity

  def initialize(capacity = MAX_CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    raise "Airport is full" if airport_full?
    @planes << plane
  end

  def take_off
    raise "Airport is empty" if airport_empty?
    @planes.pop
  end

private

attr_reader :planes

  def airport_full?
    @planes.count >= MAX_CAPACITY
  end

  def airport_empty?
    @planes.empty?
  end

end
