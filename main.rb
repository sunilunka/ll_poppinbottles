@bottles = {
   'bought' => 0,
   'from_bottles' => 0,
   'from_caps' => 0,
   'total_free' => 0, 
   'caps_left' => 0,
   'bottles_left' => 0  
}

def get_bottles(money)
  @bottles['bought'] = money/2
  @bottles['from_bottles'] = @bottles['bought']/2
  @bottles['from_caps'] = @bottles['bought']/4
  @bottles['total_free'] = @bottles['from_bottles'] + @bottles['from_caps']
  @bottles['caps_left'] = @bottles['bought']%4
  @bottles['bottles_left'] = @bottles['bought']%2
  display_bottles
  
end

def display_bottles(money)
  puts "This is what you get for your #{money}:"
  puts "Bottles purchased: #{}"
end

def bottles_bought
  puts "How much money are you going to spend on pop?"
  print "To spend: $ " 
  spending_on_pop =  gets.chomp
  puts
  amount_to_compute = spending_on_pop.to_i
  get_bottles(amount_to_compute)
  user_option
end

def user_option
  puts "#### POP CALCULATOR ####"
  puts "Do you want to:"
  puts "1. Calculate what the customers money will get them?"
  puts "2. Quit"
  print "Enter the option number to select: "
  compute_option
end

def compute_option
  option = gets.chomp
  opt_converted = option.to_i
  case opt_converted
    when 1
      run_program
    when 2
      puts "Ok, goodbye."
      exit
    else
      puts "Sorry, that's not a valid option, try again."
  end
end

def display_bottles
  puts "---BOTTLES BREAKDOWN---"
  puts "Bottles Purchased: #{@bottles['bought']} "
  puts "Pop from bottles recycled: #{@bottles['from_bottles']}"
  puts "Pop from bottle caps recycled: #{@bottles['from_caps']}"
  puts "Pop bottles left over: #{@bottles['bottles_left']}"
  puts "Pop bottle caps left over: #{@bottles['caps_left']}"
  puts
end

def run_program
    bottles_bought
    display_bottles
end

user_option