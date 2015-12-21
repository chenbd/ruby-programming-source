def total(from, to, &block)
    result = 0
    from.upto(to) do |num|
        if block
            result += block.call(num)
        else
            result += num
        end
    end
    return result
end

p total(1, 10)
p total(1, 10) { |num| num ** 2 }


