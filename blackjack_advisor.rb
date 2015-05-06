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


def check_soft(hand_total, dealer_card, soft)
    return soft[hand_total][dealer_card]
end

soft = {13 => {2 => "hit", 3 => "hit", 4 => "double or hit",
          5 => "double or hit", 6 => "double or hit", 7 => "hit", 8 => "hit",
          9 => "hit", 10 => "hit", 11 => "hit"},
        14 => {2 => "hit", 3 => "hit", 4 => "double or hit",
          5 => "double or hit", 6 => "double or hit", 7 => "hit", 8 => "hit",
          9 => "hit", 10 => "hit", 11 => "hit"},
        15 => {2 => "hit", 3 => "hit", 4 => "double or hit",
          5 => "double or hit", 6 => "double or hit", 7 => "hit", 8 => "hit",
          9 => "hit", 10 => "hit", 11 => "hit"},
        16 => {2 => "hit", 3 => "hit", 4 => "double or hit",
          5 => "double or hit", 6 => "double or hit", 7 => "hit", 8 => "hit",
          9 => "hit", 10 => "hit", 11 => "hit"},
        17 => {2 => "double or hit", 3 => "double or hit", 4 => "double or hit",
          5 => "double or hit", 6 => "double or hit", 7 => "hit", 8 => "hit",
          9 => "hit", 10 => "hit", 11 => "hit"},
        18 => {2 => "stand", 3 => "double or stand", 4 => "double or stand",
          5 => "double or stand", 6 => "double or stand", 7 => "stand",
          8 => "stand", 9 => "hit", 10 => "hit", 11 => "stand"},
        19 => {2 => "stand", 3 => "stand", 4 => "double or stand",
          5 => "double or stand", 6 => "double or stand", 7 => "stand",
          8 => "stand", 9 => "hit", 10 => "hit", 11 => "stand"}}


print "Please enter your first card: "
card_1 = card_value.to_i
print "Please enter your second card: "
card_2 = card_value.to_i
print "Please enter the dealer's card: "
dealer_card = card_value.to_i

hand_total = card_1 + card_2
puts check_soft(hand_total, dealer_card, soft)

# if card_1 = 11 || card_2 || 11
# bypass_hash(card_1, card_2, hand_total)
# puts hand_total
# puts card_1, card_2
