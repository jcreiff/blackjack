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

def twentyplus(hand_total)
  if hand_total == 20 || hand_total == 21
    return "stand"
  else
    return "split"
  end
end

def check_soft(hand_total, dealer_card, soft)
  return soft[hand_total][dealer_card]
end

def check_pair(hand_total, dealer_card, pair)
  return pair[hand_total][dealer_card]
end

def bypass_hash(first_card, second_card, hand_total)
  if hand_total < 8 && first_card != second_card
    puts "Your optimal move is to hit."
  elsif hand_total > 16 && first_card != second_card
    puts "Your optimal move is to stand."
  else
    return
  end
end

def check_hard(hand_total, dealer_card, hard)
  return hard[hand_total][dealer_card]
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

pair = {4 => {2 => "split", 3 => "split", 4 => "split", 5 => "split",
          6 => "split", 7 => "split", 8 => "hit", 9 => "hit", 10 => "hit", 11 => "hit"},
        6 => {2 => "split", 3 => "split", 4 => "split", 5 => "split",
          6 => "split", 7 => "split", 8 => "split", 9 => "hit", 10 => "hit", 11 => "hit"},
        8 => {2 => "hit", 3 => "hit", 4 => "split", 5 => "split",
          6 => "split", 7 => "hit", 8 => "hit", 9 => "hit", 10 => "hit", 11 => "hit"},
        10 => {2 => "double or hit", 3 => "double or hit", 4 => "double or hit",
          5 => "double or hit", 6 => "double or hit", 7 => "double or hit",
          8 => "double or hit", 9 => "double or hit", 10 => "hit", 11 => "hit"},
        12 => {2 => "split", 3 => "split", 4 => "split", 5 => "split",
          6 => "split", 7 => "split", 8 => "hit", 9 => "hit", 10 => "hit", 11 => "hit"},
        14 => {2 => "split", 3 => "split", 4 => "split", 5 => "split",
          6 => "split", 7 => "split", 8 => "split", 9 => "hit", 10 => "stand", 11 => "hit"},
        16 => {2 => "split", 3 => "split", 4 => "split", 5 => "split",
          6 => "split", 7 => "split", 8 => "split", 9 => "split", 10 => "split", 11 => "split"},
        18 => {2 => "split", 3 => "split", 4 => "split", 5 => "split",
          6 => "split", 7 => "stand", 8 => "split", 9 => "split", 10 => "stand", 11 => "stand"}}

hard = {8 => {2 => "hit", 3 => "hit", 4 => "hit", 5 => "double or hit",
          6 => "double or hit", 7 => "hit", 8 => "hit", 9 => "hit", 10 => "hit", 11 => "hit"},
        9 => {2 => "double or hit", 3 => "double or hit", 4 => "double or hit",
          5 => "double or hit", 6 => "double or hit", 7 => "hit", 8 => "hit",
          9 => "hit", 10 => "hit", 11 => "hit"},
        10 => {2 => "double or hit", 3 => "double or hit", 4 => "double or hit",
          5 => "double or hit", 6 => "double or hit", 7 => "double or hit",
          8 => "double or hit", 9 => "double or hit", 10 => "hit", 11 => "hit"},
        11 => {2 => "double or hit", 3 => "double or hit", 4 => "double or hit",
          5 => "double or hit", 6 => "double or hit", 7 => "double or hit",
          8 => "double or hit", 9 => "double or hit", 10 => "double or hit", 11 => "double or hit"},
        12 => {2 => "hit", 3 => "hit", 4 => "stand", 5 => "stand", 6 => "stand",
          7 => "hit", 8 => "hit", 9 => "hit", 10 => "hit", 11 => "hit"},
        13 => {2 => "stand", 3 => "stand", 4 => "stand", 5 => "stand", 6 => "stand",
          7 => "hit", 8 => "hit", 9 => "hit", 10 => "hit", 11 => "hit"},
        14 => {2 => "stand", 3 => "stand", 4 => "stand", 5 => "stand", 6 => "stand",
          7 => "hit", 8 => "hit", 9 => "hit", 10 => "hit", 11 => "hit"},
        15 => {2 => "stand", 3 => "stand", 4 => "stand", 5 => "stand", 6 => "stand",
          7 => "hit", 8 => "hit", 9 => "hit", 10 => "hit", 11 => "hit"},
        16 => {2 => "stand", 3 => "stand", 4 => "stand", 5 => "stand", 6 => "stand",
          7 => "hit", 8 => "hit", 9 => "hit", 10 => "hit", 11 => "hit"}}

print "Please enter your first card: "
first_card = card_value.to_i
print "Please enter your second card: "
second_card = card_value.to_i
print "Please enter the dealer's card: "
dealer_card = card_value.to_i

hand_total = first_card + second_card

if hand_total > 19
  move = twentyplus(hand_total)
end
puts hand_total
puts move
#puts check_hard(hand_total, dealer_card, hard)
#puts check_pair(hand_total, dealer_card, pair)
#puts check_soft(hand_total, dealer_card, soft)
# if first_card = 11 || second_card || 11
# bypass_hash(first_card, second_card, hand_total)
# puts hand_total
# puts first_card, second_card
