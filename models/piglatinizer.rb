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
      return str + "ay"
    else
      return str[splitIndex+1..str.size] + str[0..splitIndex] + "ay"
    end
  end
  
  def vowelIndex(str)
    index = -1
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
