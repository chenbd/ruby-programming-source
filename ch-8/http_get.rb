
require "net/http"
require "uri"

url = URI.parse("http://www.ruby-lang.org/en/")
p url
http = Net::HTTP.start(url.host, url.port)
p http
doc = http.get(url.path)
p doc
