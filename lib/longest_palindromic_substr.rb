def longest_palindrome(string)
    return string if string.length == 1
    return string if string == string.split("").reverse.join
  symm_subs = []

  string.length.times do |start_pos|
    (2..(string.length - start_pos)).each do |len|
      substr = string[start_pos...(start_pos + len)]
      symm_subs << substr if is_palindrome?(substr)
    end
  end
     if symm_subs.sort_by {|x| x.length}.last.nil?
      return string[0]
    else
      symm_subs.sort_by {|x| x.length}.last
    end
end

def is_palindrome?(string)
  string.split("").reverse.join == string
end
