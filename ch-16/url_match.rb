str = "http://www.ruby-lang.org/en"

%r|http://([^/]*)/| =~ str
print "server address is :", $1, "\n"
