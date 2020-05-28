class PigLatinizer
  
  def initialize
  end
  
  def piglatinize(phrase)
    words = phrase.split(" ")
    output = []
    
    words.each do |x|
      if x.start_with?(/[aeiou]/)
        output << (x << "way")
      else
        until x.start_with?(/[aeiou]/)
          x = x.slice[1, x.]
        end
      end
    end
    
    return output.join(" ")
  end
end

test = PigLatinizer.new
puts test.piglatinize("flatiron apple")