class PigLatinizer

    def initialize
   
    end

    def piglatinize(words)
      vowels=['a', 'A', 'e', 'E' 'i', 'I', 'o', 'O', 'u', 'U', 'y', 'Y']

      @answer=words.split(" ").map do |word|
      if vowels.include?(word[0])
        word+"way"
      else
        a='' 
        letters=word.split("")
        until vowels.include?(letters[0]) do
          a<<letters.shift
        end
          letters.join("") + a + "ay"
        end
      end.join(" ").to_s
      @answer
    end

    # def variable
    #     @words=piglatinize
    # end

end