def cels2fahr(cels)
    cels * 9.0 / 5.0 + 32.0
end


def fahr2cels(fahr)
    (fahr.to_f - 32) * 5.0 / 9.0
end

1.upto(100) do |i|
    print "fahr2cels(#{i})", fahr2cels(i), "\n"
end

1.upto(100) do |i|
    print "cels2fahr(#{i})", cels2fahr(i), "\n"
end
def dice
    Random.rand(6) + 1
end

def dice10
    ret = 0
    10.times do
        ret += dice
    end
    p "dice10 #{ret}"
    ret
end

def prime?(num)
    return false if num == 1
    for i in 2..Math.sqrt(num)
        if num % i == 0
            return false
        end
    end
    return true
end


1.upto(100) do |i|
    print "prime?(#{i}) ", prime?(i), "\n"
end
