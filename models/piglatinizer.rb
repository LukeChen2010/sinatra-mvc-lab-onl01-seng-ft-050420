class PigLatinizer
  
  def initialize
  end
  
  def piglatinize(phrase)
    words = phrase.split(" ")
    output = []
    
    words.each do |x|
      if x.start_with?(/[aeiouAEIOU]/)
        output << (x << "way")
      else
        until x.start_with?(/[aeiouAEIOU]/)
          x = x[1, x.length - 1] << x[0]
        end
        output << (x << "ay")
      end
    end
    
    return output.join(" ")
  end
end