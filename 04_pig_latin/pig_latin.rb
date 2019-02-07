#write your code here
def translate (sentence)
    arr = sentence.split(" ")
    newArr = []
    arr.each do |word|
        if word[0] == "a" or word[0] == "e" or word[0] == "i" or word[0] == "o" or word[0] == "u"
            newArr.push(word + "ay")
        else
            consonant = ""
            i = 0
            until word[i] == "a" or word[i] == "e" or word[i] == "i" or word[i] == "o" or word[i] == "u"  do
                if word[i] == "q" and word[i+1] == "u"
                    consonant += "qu";
                    i += 2
                else
                    consonant += word[i]
                    i += 1
                end
            end
            newArr.push(word[i, word.length] + consonant + "ay")
        end
    end
    newArr.join(" ")
end