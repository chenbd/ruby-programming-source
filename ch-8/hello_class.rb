class HelloWorld
    version = "1.0"
    attr_accessor :name
    def initialize(myname = "Ruby")
        @name = myname
    end
    class << self
        def hello(name)
            puts "#{name} said hello."
        end
    end


    def name
        @name
    end

    def name=(value)
        @name = value
    end

    def hello
        puts "Hello, world, I am #{@name}"
    end

    def greet
        puts "Hi, I am #{self.name}"
    end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
alice.hello
ruby.hello


p bob.name
p alice.name
p ruby.name

bob.greet
alice.greet
ruby.greet

class << HelloWorld
    def hello(name)
        puts "#{name} said hello."
    end
end

def HelloWorld.hello(name)
    puts "#{name} said hello."
end
HelloWorld.hello("John")

p HelloWorld::Version
