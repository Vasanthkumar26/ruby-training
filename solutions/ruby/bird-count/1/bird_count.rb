class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds = birds_per_day
  end

  def yesterday
    @birds[-2]
  end

  def total
    @birds.sum
  end

  def busy_days
    busy_days_array = @birds.select { |bird| bird >= 5 }
    busy_days_array.size
  end

  def day_without_birds?
    @birds.any? { |bird| bird == 0 }
  end
end
