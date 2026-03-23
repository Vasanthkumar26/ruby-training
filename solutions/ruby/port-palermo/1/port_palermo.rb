module Port
  Port::IDENTIFIER = :PALE
  
  def self.get_identifier(city)
    city.slice(0,4).upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    get_item = ship_identifier.to_s.slice(0, 3)
    return :A if (get_item == "OIL" || get_item == "GAS")
    return :B
  end
end
