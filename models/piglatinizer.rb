class PigLatinizer 
  
  def convertToPigLatin(str)
    if vowel?(str[0])
      return str + "ay"
    else
      return str[1] + str[0] + "ay"
    end
  end
  
  def vowel?(character)
    if /W[aeiou]rd/.match(character.downcase)
      return true
    else
      return false
    end
  end
  
end

pg = PigLatinizer.new
pg.convertToPigLatin("hello")