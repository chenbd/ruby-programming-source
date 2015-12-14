puts "Sample for break:"
i = 0
["perl", "python", "ruby", "schema"].each do |lang|
    i += 1
    if i == 3
        break
    end

    p [i, lang]
end

puts "Sample for next:"
i = 0
["perl", "python", "ruby", "schema"].each do |lang|
    i += 1
    if i == 3
       next
    end

    p [i, lang]
end


puts "Sample for redo:"
i = 0
["perl", "python", "ruby", "schema"].each do |lang|
    i += 1
    if i == 3
       redo
    end

    p [i, lang]
end
