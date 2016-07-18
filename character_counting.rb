def count_letters(string)
  counted_characters = {}
  string.gsub!(/\s+/, "")
  string.each_char { |c|
    if counted_characters.key?(c)
      counted_characters[c] += 1
    else
      counted_characters[c] = 1
    end
  }
  # counted_characters.delete(' ')
  counted_characters
end

puts count_letters("I can't wait to get brewing beer again.")


def character_index(string)
  index_hash = {}
  character_array = string.split(//)
  character_array.each_with_index { |c, i| index_hash[i] = c }
  index_hash
end

puts ''
puts character_index("I can't wait to get brewing beer again.")