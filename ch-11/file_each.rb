#file = File.open("sample.txt")
file = File.open(ARGV[0])
file.each_line do |line|
    print line
end
file.close
