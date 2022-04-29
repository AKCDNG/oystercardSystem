# start_station(station)
# exit_station(station)
# calc fare

class Journey

  attr_reader :current_journey

  def initialize
    @current_journey = {entry: nil, exit: nil}
  end

  def start_journey(station_instance)
    @current_journey[:entry] = station_instance
  end

  def end_journey(station_instance)
    @current_journey[:exit] = station_instance
  end

  def on_journey?
    @current_journey[:entry] == nil ? false : true
  end

  def reset_journey
    @current_journey = {entry: nil, exit: nil}
  end

end