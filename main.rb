

def get_bottles(money)
  bought = money/2
  from_bottles = bought/2 
  from_caps = bought/4
  total_free_bottles = from_bottles + from_caps
  puts "#{bought}, #{total_free_bottles}"
end

def bottles_bought
  puts "How much money are you investing in pop?"
  print "To spend $" 
  spending_on_pop =  gets.chomp
  amount_to_compute = spending_on_pop.to_i
  get_bottles(amount_to_compute)
end

bottles_bought