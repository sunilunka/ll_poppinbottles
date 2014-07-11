

def get_bottles(money)
  bought = money/2
  from_bottles = bought/2 
  from_caps = bought/4
  total_free_bottles = from_bottles + from_caps
  puts "Buying $#{money} bottles means you can get #{total_free_bottles} when they are recycled."
end

def bottles_bought
  puts "How much money are you investing in pop?"
  print "To spend: $ " 
  spending_on_pop =  gets.chomp
  amount_to_compute = spending_on_pop.to_i
  get_bottles(amount_to_compute)
end

def run_program
  status = 0
  while status < 6
    bottles_bought
    status += 1
  end
end

run_program