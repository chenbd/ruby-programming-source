def power_of(n)
    lambda do |x|
        return x ** n
    end
end

cube = power_of(3)
p cube
p cube.call(5)


def power_of(n)
    Proc.new do |x|
        x ** n
    end
end

cube = power_of(3)
p cube
p cube.call(5)
