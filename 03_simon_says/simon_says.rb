#write your code here
def echo (word)
    word
end

def shout (word)
    word.upcase
end

def repeat (word, num = 2)
    word + (" " + word) * (num - 1)
end

def start_of_word (word, sub)
    word[0, sub]
end

def first_word (word)
    arr = word.split(" ")
    arr[0]
end

def titleize (word)
    arr = word.split(" ")
    string = arr[0].capitalize + " "
    if arr.length > 1
        arr = word[arr[0].length, word.length].split(" ")
        arr.each do |name|
            if name == "and" or name == "over" or name == "the"
                string += name + " "
            else
                string += name.capitalize + " "
            end
        end
    end
    string[0, (string.length - 1)]
end