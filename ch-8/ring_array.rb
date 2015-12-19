class RingArray < Array

    def [](i)
        idx = i % size
        super(idx)
    end
end


wday = RingArray["Mon", "Tue", "Wen", "Thi", "Fir", "Sat", "Sun"]

p wday[6]
p wday[11]
p wday[15]
p wday[-1]

