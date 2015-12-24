line_count = 0;
word_count = 0
character_count = 0

File.open(ARGV[0]) do |file|
  file.each_line do |line|
    line_count += 1
    words =  line.split(/\s+/)
    #if words
    #  word_count += words.size
    #end
    words = words.reject {|w| w.empty? }
    word_count += words.size
    character_count += line.size
  end
end

p "line_count : #{line_count}"
p "word_count : #{word_count}"
p "character_count : #{character_count}"

print "**************************\n"

def reverse(file)
  #open(file, "r+") do |f|
  open(file) do |f|
    lines = f.readlines
    f.rewind
    #f.truncate(0)
    #f.write lines.reverse.join
    print "reverse: ", lines.reverse.join(), "\n\n"
  end
end

reverse(ARGV[0])
print "**************************\n"

def reverse_savefirst(file)
  #open(file, "r+") do |f|
  open(file) do |f|
    lines = f.readlines
    f.rewind
    #f.truncate(0)
    #f.write lines.reverse.join
    print "reverse_savefirst: ", lines[0], "\n\n"
  end
end

reverse_savefirst(ARGV[0])
print "**************************\n"

def reverse_savelast(file)
  #open(file, "r+") do |f|
  open(file) do |f|
    lines = f.readlines
    f.rewind
    #f.truncate(0)
    #f.write lines.reverse.join
    print "reverse_savelast: ", lines.reverse[0], "\n\n"
  end
end

reverse_savelast(ARGV[0])
print "**************************\n"

def tail(line, file)
  File.open(file) do |f|
    lines = f.readlines
    for i in (0..line-1)
      print "tail: ", lines.reverse[i]
    end
  end
end

tail(8, ARGV[0])
print "**************************\n"

def tail1(lines, file)
  queue = Array.new
  File.open(file) do |f|
    f.each_line do |line|
      queue.push(line)
      if queue.size > lines
        queue.shift
      end
    end
  end
  queue.each do |line|
    print "tail1 :#{line}"
  end
end

tail1(3, ARGV[0])

