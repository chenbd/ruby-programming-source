tags = ["A", "IMG", "PRE"]
tags.each do |tagname|
    case tagname
    when "P", "A", "R", "B", "BLOCKQUOTE"
        puts "#{tagname} has child."
    when "IMG", "BR"
        puts "#{tagname} has no child."
    else
        puts "#{tagname} can not be used!"
    end
end
