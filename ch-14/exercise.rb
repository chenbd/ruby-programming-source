#Encoding: UTF-8
str = <<EOF
Ruby is an object oriented programming language
EOF

p str

a = str.split(/\s+/)
p a

b = a.sort
p a
p b

b = a.sort {|a, b| a.downcase <=> b.downcase }
b = a.sort_by {|s| s.downcase }
p a
p b

b = []
a.each_with_index do |str, i|
  b << str.capitalize
end
p a
p b

count = Hash.new(0)
str.each_char do |c|
  count[c] += 1
end

p count

count.keys.sort.each do |c|
  printf("'%s' : %s \n", c, "*" * count[c])
end

def han2num(string)
  dig4 = dig3 = dig2 = dig1 = 0
  nstring = string.dup
  nstring.gsub!(/一/, 1)
  nstring.gsub!(/二/, 2)
  nstring.gsub!(/三/, 3)
  nstring.gsub!(/四/, 4)
  nstring.gsub!(/五/, 5)
  nstring.gsub!(/六/, 6)
  nstring.gsub!(/七/, 7)
  nstring.gsub!(/八/, 8)
  nstring.gsub!(/九/, 9)
  if nstring =~ /((\d)?千)?((\d)?百)?((\d)?十)?((\d)?$)/
      if $1
          dig4 = $2 || "1"
      end
      if $3
          dig3 = $4 || "1"
      end
      if $5
          dig2 = $6 || "1"
      end
      dig1 = $7 || 0
  end
  return (dig4 + dig3 + dig2 + dig1).to_i
end


p han2num("七千八百二十三")
p han2num("千八百二十三")
p han2num("八百二十三")
p han2num("百二十三")
p han2num("二十三")
p han2num("十三")
p han2num("三")

