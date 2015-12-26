def counter
    c = 0
    Proc.new do
        c += 1
    end
end

c1 = counter
p c1.call
p c1.call
p c1.call

c2 = counter
p c2.call
p c2.call

p c1.call


prc = Proc.new {|a, b| a + b }
p prc.call(1, 2)
p prc[3,4]
p prc.yield(5,6)
p prc.(7,8)
p prc === [9,10]


fizz = Proc.new {|n| n  % 3 == 0}
buzz = Proc.new {|n| n % 5 == 0}
fizzbuzz = Proc.new {|n| n % 3 == 0 && n % 5 == 0}
(1..100).each do |i|
    case i
    when fizzbuzz then puts "Fizz Buzz"
    when fizz then puts "Fizz"
    when buzz then puts "Buzz"
    else puts i
    end
end

proc0 = Proc.new {nil}
proc1 = Proc.new {|a| a}
proc2 = Proc.new {|a,b| a + b}
proc3 = Proc.new {|a,b,c| a + b + c}
procn = Proc.new {|*args| args}

p proc0.arity
p proc1.arity
p proc2.arity
p proc3.arity
p procn.arity
