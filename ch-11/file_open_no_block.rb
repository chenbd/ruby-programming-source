file = File.open(ARGV[0])
begin
    file.each_line do |line|
        print line
    end
ensure
    file.close
end
