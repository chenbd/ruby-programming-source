pattern = Regexp.new(ARGV[0])

filename = ARGV[1]
maxmatch = 10
matchs = 0

file = File.open(filename)
file.each_line do |line|
    if matchs >= maxmatch
        break;
    end
    if pattern =~ line
        matchs += 1
        puts line
    end
end
file.close
