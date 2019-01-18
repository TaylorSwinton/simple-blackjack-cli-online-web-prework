def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card_total = 1 + rand(11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  userInput = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)

  return sum
end

def hit?(card_total)
  prompt_user
  input = get_user_input

  if input == 's'
    return card_total
  else input == 'h'
    return new_total = deal_card + card_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round

    until hit?(card_total) >= 21
      card_total = card_total + hit?()
    end
    display_card_total(card_total)
  end_game(card_total)
end
