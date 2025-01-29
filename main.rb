# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) 
# that was found in the original string and how many times it was found.
# Next, make sure your method can handle multiple words:
# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, 
# "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

def substrings(my_word, dict)
  my_word = my_word.downcase
  result = Hash.new(0)
  (0...my_word.length).each do |i|
    (i...my_word.length).each do |j|
      word_instances =  my_word[i..j]
      result[word_instances] += 1 if dict.include?(word_instances)
    end
  end
  puts result
end

dictionary = ["below","down","go","going","horn","how","howdy",
"it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)