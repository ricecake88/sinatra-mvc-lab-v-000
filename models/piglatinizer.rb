class PigLatinizer
  
  attr_accessor :text, :pgWords
  
  def initialize
    @pgWords = []
  end
  
  def textIntoArray
    words = @text.downcase.split(" ")
    words.each {|word| @pgWords.push(piglatinizer(word))}
    @pgWords
  end
  
  def piglatinize(str)
    splitIndex = vowelIndex(str)
    if splitIndex == -1
      puts str
      return str + "way"
    else
      return str[splitIndex..str.size] + str[0..splitIndex-1] + "ay"
    end
  end
  
  def vowelIndex(str)
    index = -1
    if str.size == 1 && vowel?(str[0])
      return index
    end
    str.chars.each_with_index do |char, index|
      if vowel?(char)
        return index
      end
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
str = pg.piglatinize("pork")
puts str
