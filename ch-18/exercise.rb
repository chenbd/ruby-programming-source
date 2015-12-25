#p "#{$:}"
def print_libraries
  $:.each do |path|
    next unless FileTest.directory?(path)
    Dir.open(path) do |dir|
      dir.each do |name|
        if name =~ /\.rb$/i
          puts name
        end
      end
    end
  end
end

print_libraries


def du(path)
  ret = 0
  Dir.glob(["#{path}/**/*", "#{path}/**/.*"]).each do |name|
    unless File.directory?(name)
      ret += process_file(name)
    end
  end
  return ret
end

def process_file(path)
  return File.stat(path).size
end



print  "#{ARGV[0]} is ", du(ARGV[0]), "  bytes\n"


require "find"

def du1(path)
  ret = 0
  Find.find(path) do |f|
    if File.file?(f)
      ret += f.size
    end
  end
  return ret
end

print  "#{ARGV[0]} is ", du1(ARGV[0]), "  bytes\n"
