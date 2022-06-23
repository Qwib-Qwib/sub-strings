def substrings (string, dictionary)  #I haven't actually followed the suggestion from Odin Project regarding converting strings and arrays into each others. I assumed it was merely a suggestion, since the way I did it seemed more intuitive.
  dictionary.reduce({}) do |hash_counter, dictionary_word|
    hash_counter[dictionary_word] = string.scan(/#{dictionary_word}/i).length   #This regex means: this sequence of characters, case insensitive (/i).
    hash_counter  #Note that this method also counts for values of 0 when there's no match. The example given on the Odin Project seems to ignore them and leave them out of the hash, but I prefer it that way.
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
