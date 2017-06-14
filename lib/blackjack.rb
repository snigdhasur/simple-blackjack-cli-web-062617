def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  return rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(num)
  # code hit? here
  prompt_user
  response = get_user_input
  if response == 'h'
    return num + deal_card
  elsif response == 's'
    return num
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please output a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  welcome
  num = initial_round
  y = hit?(num)
  display_card_total(y)
  until y > 21
    prompt_user
    response = get_user_input
    if response == 'h'
      y = y + deal_card
      display_card_total(y)
    elsif response == 's'
      y = y
      display_card_total(y)
    else
      return invalid_command
    end

  end

  end_game(y)
end
