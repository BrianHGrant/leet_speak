class String
  define_method (:leet_speak) do
    sentence_split = self.split
    final_sentence = []
    sentence_split.each do |word|
      letters = word.split("")
      new_letters = []
      if letters.at(0) === "s"
        new_letters.push("s")
        letters.shift()
      end
      letters.each do |letter|
        if letter === "e"
          new_letters.push("3")
        elsif letter === "o"
          new_letters.push("0")
        elsif letter === "I"
          new_letters.push("1")
        elsif letter === "s"
          new_letters.push("z")
        else
          new_letters.push(letter)
        end
      end
      new_word = new_letters.join("")
      final_sentence.push(new_word)
    end
  final_sentence.join(" ")
  end
end
