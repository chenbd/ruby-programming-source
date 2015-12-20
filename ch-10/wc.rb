ltotal = 0
wtotal = 0
ctotal = 0

ARGV.each do |file|
    begin
        input = File.open(file)
        l, w, c = 0, 0, 0
        input.each_line do |line|
            l += 1
            c += line.size
            line.sub!(/^\s+/, "")
            ary = line.split(/\s+/)
            w += ary.size
        end
        input.close
        printf("%8d %8d  %8d %s \n", l, w, c, file)
        ltotal += l
        wtotal += w
        ctotal += c
    rescue => ex
        print ex.message, "\n"
    end
end
printf("%8d %8d  %8d %s \n", ltotal, wtotal, ctotal, "total")


def copy(from, to)
    src = File.open(from)
    begin
        dst = File.open(to, "w")
        data = src.read
        dst.write(data)
        dst.close
    ensure
        src.close
    end
end

retry_count = 0
file = ARGV[0]
begin
    io = File.open(file)
rescue
    sleep 1
    if retry_count < 5 then
        retry_count += 1
        retry
    end
end

p retry_count

p data = io && io.read
io && io.close


file1 = ARGV[0]
file2 = ARGV[1]
begin
    io = File.open(file1)
rescue Errno::ENOENT, Errno::EACCESS
    io = File.open(file2)
end
io && io.close
