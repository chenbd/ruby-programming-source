module M
    def meth
        puts "meth"
    end
end

class C
    include M
end

c = C.new
c.meth

p C.ancestors
p C.superclass


module ClassMethods
    def cmethod
        "class method"
    end
end


module InstanceMethods
    def imethod
        "instance method"
    end
end


class MyClass
    extend ClassMethods
    include InstanceMethods
end


p MyClass.cmethod
p MyClass.new.imethod
