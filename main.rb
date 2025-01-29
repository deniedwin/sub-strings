# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) 
# that was found in the original string and how many times it was found.
# Next, make sure your method can handle multiple words:
# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, 
# "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

def substrings(my_word, dict)
  word_index = 0
  word_instances = ""
  while word_index != my_word.length
    word_instances =  my_word[word_index..my_word.length]
    matches = dict.select {|word| word == word_instances}
    matches.reduce(Hash.new(0)) do |result, word|
      result[word] += 1
      puts result
    end
    word_index += 1
  end
end

def nest_string(str)
  for i in (0...str.length)
    print str[0..i], " "
  end
end

dictionary = ["below","down","go","going","horn","how","howdy",
"it","i","low","own","part","partner","sit"]

# substrings("below", dictionary)

nest_string("below")