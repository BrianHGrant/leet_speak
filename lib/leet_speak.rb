class String
  define_method (:leet_speak) do
    letters = self.split("")
    new_letters = []
    letters.each do |letter|
      if letter === "e"
        new_letters.push("3")
      elsif letter === "o"
        new_letters.push("0")
      elsif letter === "I"
        new_letters.push("1")
      else
        new_letters.push(letter)
      end
    end
    new_letters.join("")
  end
end
