require 'pry-byebug'
words = gets.chomp
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def lowerCase(string)
    string.downcase
end

#cleans the string of special characters
def clean(string)
   string.gsub(/[',.!?:;]['s]/, "")

end

#Makes the string something you can work with
def sanitize(words)
#lowercases the string
   lower_case = lowerCase(words)
#removes all the special elements
clean_string = clean(lower_case)
end
#converts the words into an array
def to_array(string)
    word_array=[]
   string.scan(/\w+/)
end

def compare(word_array,dictionary)
    word_array = word_array.join(" ")
dictionary.reduce(Hash.new(0)) do |result_hash, dictWord|
scan_res = word_array.scan(/#{dictWord}/).size
if scan_res>0
    result_hash[dictWord]=scan_res
    result_hash
end
result_hash
end
end





def substrings(string,dictionary)
words = sanitize(string)
word_array = to_array(words)
comparison_results = compare(word_array, dictionary)
p comparison_results
end

substrings(words,dictionary)
