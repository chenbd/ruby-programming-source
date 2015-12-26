def prefix(ary, obj)
    result = []
    ary.each do |item|
        result << item
        if item == obj
            return result
        end
    end
    return result
end

p prefix([1,2,3,4,5], 3)

p [:a, :b, :c].collect do |item|
    break []
end
