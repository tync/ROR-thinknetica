vowels = Hash.new
alphabetize = ('a'..'z').to_a

"aeiouy".split("").each do |i|
  vowels[i] = alphabetize.index(i) + 1
end
