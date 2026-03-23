module Chess
  Chess::RANKS = 1..8
  Chess::FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    return true if (RANKS.include?(rank) && FILES.include?(file))
    return false
  end

  def self.nickname(first_name, last_name)
    (first_name[...2]+last_name[-2..]).upcase
  end

  def self.move_message(first_name, last_name, square)
    if valid_square?(square[1].to_i, square[0])
      return "#{nickname(first_name, last_name)} moved to #{square}"
    else
      return "#{nickname(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
