wday = {mon: "1", tue: "2", wen: "3", thu: "4", fri: "5", sat: "6", sun: 0}

p wday
p wday.size
p wday.keys.size
wday.each do |key, value|
    print "\"#{key}\" is #{value}\n"
end


def str2hash(str)
    astr = str.split
    h = Hash.new("")
    for i in (0..astr.size/2 - 1) do
        h[astr[2*i]] = astr[2*i+1]
    end
    return h
end

p str2hash("a b c d")
p str2hash("a b c")


def str2hash(str)
    astr = str.split(/\s+/)
    h = Hash.new("")
    while key = astr.shift
        value = astr.shift
        h[key] = value
    end
    return h
end

p str2hash("a b c d")
p str2hash("a b c")
