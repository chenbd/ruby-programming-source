class HelloCount
    @@count = 0
    def HelloCount.count
        @@count
    end

    def initialize(myname = "Ruby")
        @name = myname
    end

    def hello
        @@count += 1
        puts "Hello, World, I am #{@name}"
    end
end


p HelloCount.count

bob = HelloCount.new("Bob")
alice = HelloCount.new("Alice")
ruby = HelloCount.new
bob.hello
alice.hello
ruby.hello

p HelloCount.count
