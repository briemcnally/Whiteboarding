# Write a function that takes a message and an increment amount and
# outputs the same letters shifted by that amount in the alphabet.
# Assume lowercase and no punctuation. Preserve spaces.

def caesar_cipher(str, shift)
  letters = ("a".."z").to_a

  encoded = ""
  str.each_char do |char|
    if char == " "
      encoded << " "
      next
    end

    old_idx = letters.find_index(char)
    new_idx = (old_idx + shift) % letters.length

    encoded << letters[new_idx]
  end

  encoded
end
