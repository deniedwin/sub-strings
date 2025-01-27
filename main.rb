# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) 
# that was found in the original string and how many times it was found.

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

dictionary = ["below","down","go","going","horn","how","howdy",
"it","i","low","own","part","partner","sit"]

substrings("below", dictionary)