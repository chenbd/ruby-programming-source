file = File.open(ARGV[0])
file.each_line do |line|
    next if /^\s*$/ =~ line # whitespace line
    next if /^#/ =~ line # comment
    puts line
end
file.close
