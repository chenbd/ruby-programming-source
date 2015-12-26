pattern = Regexp.new(aRGV[0])
filename = ARGV[1]

count = 0
File.open(filename) do |file|
    file.each_line do |line|
        if pattern =~ line
            line.scan(pattern) do |s|
                count += 1
            end
            print line
        end
    end
end

print "count : #{count}"


count = 0
File.read(filename).scan(pattern) do |s|
    count += 1
end
print "count : #{count}"
