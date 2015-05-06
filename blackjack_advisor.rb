def card_value
value = ""
  until (1..11).include?(value.to_i)
    value = gets.chomp
    if (1..10).include?(value.to_i)
      value.to_i
    elsif ["k", "q", "j"].include?(value.downcase)
      value = 10
    elsif value.downcase == "a"
      value = 11
    else
      print "Not a valid card, please try again: "
    end
  end
  return value
end

def bypass_hash(card_1, card_2, hand_total)
  if hand_total < 8 && card_1 != card_2
    puts "Your optimal move is to hit."
  elsif hand_total > 16 && card_1 != card_2
    puts "Your optimal move is to stand."
  else
    return
  end
end

print "Please enter your first card: "
card_1 = card_value.to_i
print "Please enter your second card: "
card_2 = card_value.to_i
print "Please enter the dealer's card: "
dealer_card = card_value.to_i

hand_total = card_1 + card_2

bypass_hash(card_1, card_2, hand_total)
puts hand_total
puts card_1, card_2
