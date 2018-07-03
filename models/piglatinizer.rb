class PigLatinizer
  
  attr_accessor :text, :pgWords
  
  def initialize(text)
    @text = text
  end
  
  def textIntoArray
    words = @text.split(" ")
    @pgWords = words.each {|word| convertToPigLatin(word)}
  end
  
  def convertToPigLatin(str)
    if vowel?(str[0])
      puts str[0]
      return str + "-ay"
    else
      puts str[0]
      return str[1..str.size] + "-" + str[0] + "ay"
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

pg = PigLatinizer.new("Testing all my words")
pg.textIntoArray
pg.pgWords.each {|word| puts word }