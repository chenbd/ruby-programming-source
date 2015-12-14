array = ["a", 1, nil]

array.each do |item|
    case item
    when String
        puts "#{item} is String."
    when Numeric
        puts "#{item} is Numeric."
    else
        puts "#{item} is Something eles."
    end
end
