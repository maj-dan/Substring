def substrings(text, dictionary)
  dictionary.reduce(Hash.new()) do |result_hash, substring|
    text_insensitive = text.downcase
    substring_insensitive = substring.downcase

    occurences = 0
    while text_insensitive.include?(substring_insensitive) do
      occurences += 1

      text_insensitive.sub!(substring_insensitive, '')
    end

    result_hash[substring] = occurences unless occurences == 0

    result_hash
  end
end

#exemple
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)