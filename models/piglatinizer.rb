class PigLatinizer 
  
  def initialize
  end
  
  def convertToPigLatin(str)
    if vowel?(str[0])
      return str + "ay"
    else
      return str[1] + str[0] + "ay"
    end
  end
  
  def vowel?(character)
    if /W[aeiou]rd/.match(character.lowercase)
      return true
    else
      return false
  end
  
end