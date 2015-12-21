ary = %w(Ruby is  a open source programming language with a focus 
         on simplicity and productivity. It has a elegant syntax
         that is natural to read and easy to write)
         

call_num = 0
sorted = ary.sort do |a, b|
    call_num += 1
    a.length <=> b.length
end

p sorted
puts "ary.length: #{ary.length}"
puts "block call_num: #{call_num}"


sorted = ary.sort_by { |item| item.length }
p sorted
