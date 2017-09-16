
def palindrome?(str)
  #newString = str.gsub!(/\d\s?/, "")
  newString = str.gsub(/\W+/, '').downcase
  #.tr('_', '')
  reverseString = newString.reverse
  return true if newString == reverseString
  return false if newString != reverseString
end

def count_words(str)
  newString = str.gsub!(/\d\s?/, " ")
  newString = str.gsub(/\W+/, ' ').downcase.tr('_', ' ')
  newString = " " + newString + " "
  newString.gsub(/\s+/, ' ')
  stringArray = newString.split(' ')
  freq = Hash.new(0)
  stringArray.each { |x| freq[x] += 1 }
  return freq
end