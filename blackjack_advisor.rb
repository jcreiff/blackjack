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

print "Please enter your first card: "
card_1 = card_value.to_i
print "Please enter your second card: "
card_2 = card_value.to_i
print "Please enter the dealer's card: "
dealer_card = card_value.to_i

hand_total = card_1 + card_2

puts "Your total is #{hand_total} and the dealer has #{dealer_card}."
