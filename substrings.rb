def substrings(string, dictionary)
  input = string.downcase
  result = Hash.new(0)

  dictionary.each do |dict_word|
    dict_word = dict_word.downcase
    if input.include?(dict_word)
      result[dict_word] += input.scan(dict_word).length
    end
  end

  result
end

# Testing area - uncomment to try!
# list = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# puts substrings("Howdy partner, sit down! How's it going?", list)