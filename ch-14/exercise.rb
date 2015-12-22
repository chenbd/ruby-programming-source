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
  nstring.gsub!(/yi/, 1)
end
