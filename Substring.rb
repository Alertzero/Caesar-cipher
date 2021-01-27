dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(words, array)
  container = Hash.new

  array.each do |word|
    container[word] = words.downcase.scan(/(?=#{word})/).count if words.downcase.include?(word)
  end

  container
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
