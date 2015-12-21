sum = 0
outcome = { "1" => 1000, "2" => 1000, "3" => 4000 }
outcome.each do |item, price|
    sum += price
end
puts "total #{sum}"
