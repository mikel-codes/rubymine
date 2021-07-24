def conciseFormula(syringw)
    syringw.downcase.scan(/[\w']+/)
end

def letsHashitUp(words_list)
    count = Hash.new(0) # creates the hash object and sets all parameters to zero values
    for var in words_list # reviews the list for available words
        # maps the word to its count values and calculates thus count[var] = count[var]* + 1
        # where the asterisked count has a zero value else the program fails cause the value is added to a null

        count[var] += 1 
    end
    count # simply returns count to console
end
 
a = p conciseFormula("Hello World of friends of friends :we the besties")
p letsHashitUp(a)


