class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  def has_pass?
    return true if(@pass_id)
    return false
  end

  def fits_ride?(ride_minimum_height)
    return true if(@height >= ride_minimum_height)
    return false
  end

  def allowed_to_ride?(ride_minimum_height)
    return true if(fits_ride?(ride_minimum_height) && has_pass?)
    return false
  end
end
