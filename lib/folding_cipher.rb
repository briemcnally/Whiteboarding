# Implement the Folding Cipher. It folds the alphabet in half and uses
# the adjacent letter. Ie. a <=> z, b <=> y, c <=> x, m <=> n.

def folding_cipher(str)
  folded_alphabet = Hash[('a'..'z').zip(('a'..'z').to_a.reverse)]
  str.chars.map { |chr| folded_alphabet[chr] }.join
end

# Hash::[] creates a hash from a list of key-value pairs
