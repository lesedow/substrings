def substrings(words, dict)
  found_words = []
  for word in words.downcase.split(" ")
    for w in dict
      found_words.push(w) if word.include?(w)
    end
  end
  found_words.tally
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
words = "Howdy partner, sit down! How's it going?"

result = substrings(words, dictionary)
puts result

