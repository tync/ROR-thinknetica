vowels = {}

('a'..'z').each.with_index(1) do |val, index|
  vowels[val] = index if "aeiouy".include?(val)
end
print vowels
