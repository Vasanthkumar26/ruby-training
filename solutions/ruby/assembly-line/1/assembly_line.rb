class AssemblyLine
  AssemblyLine::ASSERT_IN_DELTA = 221.0
  
  def initialize(speed)
    @speed = speed
  end

  def get_success_rate (speed)
    if (speed == 10)
      return 0.77
    elsif (speed == 9)
      return 0.80
    elsif (speed > 4 && speed < 9)
      return 0.90
    else
      return 1.00
    end
  end
    
  def production_rate_per_hour
    ASSERT_IN_DELTA * @speed * get_success_rate(@speed)
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
