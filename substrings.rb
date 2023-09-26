def substrings (sentence, substrings) 
    substrings.reduce(Hash.new(0)) do |hash, word|
        if sentence.downcase.include?(word)
            hash[word] = sentence.downcase.split(word).length - 1
        end
        hash
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
