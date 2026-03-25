module Blackjack
  def self.parse_card(card)
    case card
      when "ace"
        return 11
      when "two"
        return 2
      when "three"
        return 3
      when "four"
        return 4
      when "five"
        return 5
      when "six"
        return 6
      when "seven"
        return 7
      when "eight"
        return 8
      when "nine"
        return 9
      when "jack", "ten", "queen", "king"
        return 10
      else
        return 0
    end
  end

  def self.card_range(card1, card2)
    cards_sum = parse_card(card1) + parse_card(card2)
    if cards_sum == 21
      return "blackjack"
    elsif (17..20).include?(cards_sum)
      return "high"
    elsif (12..16).include?(cards_sum)
      return "mid"
    else
      return "low"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    cards_sum = parse_card(card1) + parse_card(card2)
    dealer_number = parse_card(dealer_card)
    if (cards_sum == 22)
      return "P"
    elsif (cards_sum == 21)
      if (dealer_number < 10)
        return "W"
      else
        return "S"
      end
    elsif ((17..20).include?(cards_sum))
      return "S"
    elsif ((12..16).include?(cards_sum))
      if (dealer_number < 7)
        return "S"
      else
        return "H"
      end
    elsif (cards_sum <= 11)
      return "H"
    end
  end
end
