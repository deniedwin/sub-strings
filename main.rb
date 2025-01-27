def sub_strings(word, dict)
  word_index = 0;
  while word_index != word.length
    puts word[word_index..word.length]
    word_index += 1
  end
end

dictionary = ["below","down","go","going","horn","how","howdy",
"it","i","low","own","part","partner","sit"]

sub_strings("below", 5)