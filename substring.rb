def substrings(text, dictionary)
  return "Incompatible input" unless text.is_a?(String) && dictionary.is_a?(Array)

  dictionary.reduce(Hash.new()) do |result_hash, substring|
    text_insensitive = text.downcase
    substring_insensitive = substring.downcase

    occurences = text_insensitive.scan(substring_insensitive).length
    result_hash[substring] = occurences unless occurences == 0

    result_hash
  end
end

#exemple
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", "hello")
puts substrings("Howdy partner, sit down! How's it going?", dictionary)