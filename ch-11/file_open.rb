#file = File.open("sample.txt") do |file|
File.open(ARGV[0]) do |file|
    file.each_line do |line|
        print line
    end
end
