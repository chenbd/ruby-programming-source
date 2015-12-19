class AccTest
    def pub
        puts "pub is public method."
    end

    public :pub # default public
    def priv
        puts "priv is private method."
    end

    private :priv # private method
end


acc = AccTest.new

acc.pub

acc.priv
