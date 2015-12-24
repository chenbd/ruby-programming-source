require "open-uri"

open("http://www.ruby-lang.org") do |io|
    puts io.read
end

url = "ftp://ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p0.tar.gz"
open(url) do |io|
    open("ruby-2.0.0-p0.tar.gz", "w") do |f|
        f.write(io.read)
    end
end
