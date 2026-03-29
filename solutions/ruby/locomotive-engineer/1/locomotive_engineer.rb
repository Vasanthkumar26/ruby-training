class LocomotiveEngineer
  def self.generate_list_of_wagons(*arguments)
    arguments
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
     first, second, third, *rest = each_wagons_id
    [third, *missing_wagons, *rest, first, second]
  end

  def self.add_missing_stops(initial_stops, **additional_stops)
    stops_array = additional_stops.values
    { **initial_stops, stops: stops_array }
  end

  def self.extend_route_information(route, more_route_information)
    { **route, **more_route_information }
  end
end
