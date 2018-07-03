class PigLatinizer 
  
  def initialize
  end
  
  def convertToPigLatin(str)
    if vowel?(str[0])
      return str + "ay"
    else
      return  
    end
  end
  
  def vowel?(character)
    if /W[aeiou]rd/.match(character.lowercase)
      return true
    else
      return false
  end
  
end