require "open-uri"
#require "nkf"

url="http://cruel.org/freeware/cathedral.html"
filename = "catheral.html"

File.open(filename, "w") do |f|
    text = open(url).read
    p text.encoding
    f.write text
    #f.write NKF.nkf("-s", text)
end
