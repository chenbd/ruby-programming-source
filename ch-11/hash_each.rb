sum = 0
outcome = { "1" => 1000, "2" => 1000, "3" => 4000 }
outcome.each do |pair|
    sum += pair[1]
end
puts "total #{sum}"
