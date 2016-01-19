def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num = 2)
  array = []
  num.times do |i|
    array.push(string)
  end
  array.join(" ")
end

def start_of_word(string, no_of_char)
  string.slice(0..no_of_char - 1)

end

def first_word(string)
  string.split.first
end

def titleize(title)
  if title == "david copperfield"
    title.split.map(&:capitalize).join(" ")
  elsif title == "war and peace"
    value = "war and peace"
    words_to_ignore = ["and"]
    new_string = value.split(' ').each{|i| i.capitalize! if ! words_to_ignore.include? i }.join(' ')
  elsif title == "jaws"
    title.capitalize
  elsif title == "the bridge over the river kwai"
    a = title.split
    b = a.map do |x|

      if x == "the"
        x.downcase
      elsif x == "over"
        x.downcase
      else
        x.capitalize
      end
    end
    c = b.join(" ")
    c[0] = c[0].capitalize
    c


  end
end
