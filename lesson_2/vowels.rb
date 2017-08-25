vowels = {}

('a'..'z').each_with_index do |val, index|
  vowels[val] = index + 1 if "aeiouy".include?(val)
end