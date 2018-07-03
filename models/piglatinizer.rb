class PigLatinizer 
  
  def convertToPigLatin(str)
    if vowel?(str[0])
      return str + "ay"
    else
      return str[1..str.size] + str[0] + "ay"
    end
  end
  
  def vowel?(character)
    if /[aeiou]/.match(character.downcase)
      return true
    else
      return false
    end
  end
  
end

pg = PigLatinizer.new
str = pg.convertToPigLatin("ello")
puts str