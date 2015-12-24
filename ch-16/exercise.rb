mail = " xyc@abc.com"

%r|\s+([^@]+)@(.+)$| =~ mail

p $1
p $2

str = "Regexp is too hard to understand..."
p str.gsub("hard", "easy")
p str

def word_capitalize(str)
  ret = ""
  str.scan(/[^-]+/) do |match|
    if match
      if !ret.empty?
        ret += "-"
      end
      ret += match.downcase.capitalize
    end
  end
  return ret
end

p word_capitalize("aba-Bd-cd")

def word_capitalize(str)
  str.gsub(/[^-]+/) do |match|
      match.downcase.capitalize
  end
end

p word_capitalize("aba-Bd-cd")
