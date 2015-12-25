require "find"

IGNORES = [/^\./, /^CVS$/, /^RCS$/]

def listdir(top)
  Find.find(top) do |path|
    dir,base = File.split(path)
    IGNORES.each do |ign|
      if ign =~ base
        Find.prune
      end
    end
    puts path
  end
end

listdir(ARGV[0])
