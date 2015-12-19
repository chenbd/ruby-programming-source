module MyModule
    def hello(name)
        putf "Hello, #{name}"
    end
end

class MyClass1
    include MyModule
end

class MyClass2
    include MyModule
end
