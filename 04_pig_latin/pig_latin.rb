require 'pry'

def translate(riddle)
  vowels = %w[a e i o u]
  alphabets = ('a'..'z').to_a
  consonant = alphabets - vowels


  if (riddle =~ /\s/)
    a = riddle.split
    b= a.map! do |word|
      if vowels.include?(word[0])
        word + "ay"
      elsif word[0..1].include?("q" && "u")
        sliced = word.slice!(0..1)
        word + sliced + "ay"
      elsif consonant.include?(word[0]) && vowels.include?(word[1])
        sliced = word.slice!(0)
        word + sliced + "ay"
      elsif consonant.include?(word[0] && word[1])
        sliced = word.slice!(0..1)
        word + sliced + "ay"
      elsif consonant.include?(word[0] && word[1] && word[2])
        sliced = word.slice!(0..2)
        word + sliced ="ay"
      elsif word[0..2].include?("s" && "q" && "u")
        sliced = word.slice!(0..2)
        word + sliced +"ay"
      elsif consonant.include?(word[0])
        sliced = word.slice!(0)
        word + sliced + "ay"
      elsif consonant.include?(word[0]) && vowels.include?(word[1])
        sliced = word.slice!(0)
        word + sliced + "ay"
      else
        "not working"
      end
    end
  return result = b.join(" ")
  elsif riddle[0..1].include?("q" && "u")
    sliced = riddle.slice!(0..1)
    return riddle + sliced + "ay"
  elsif riddle[0..2].include?("s" && "q" && "u")
    sliced = riddle.slice!(0..2)
    return riddle + sliced + "ay"
  elsif vowels.include?(riddle[0])
    return riddle + "ay"
  elsif consonant.include?(riddle[0]) && vowels.include?(riddle[1])
    first_letter_sliced = riddle.slice!(0)
    return riddle + first_letter_sliced + "ay"
  elsif consonant.include?(riddle[0] && riddle[1] && riddle[2])
    first_second_third_letter_sliced = riddle.slice!(0..2)
    return riddle + first_second_third_letter_sliced + "ay"
  elsif consonant.include?(riddle[0] && riddle[1])
    first_and_second_letter_sliced = riddle.slice!(0..1)
    return riddle + first_and_second_letter_sliced + "ay"
  else
    "not working"
  end
end
