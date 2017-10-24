def translate word
    if word.include? ' '
        new_word = ''
        words = word.split(' ')
        words.each do |word|
            new_word += translate(word) + ' '
        end
        return new_word[0...-1]
    else
        if ['a', 'e', 'i', 'o', 'u'].include? word[0]
            return word + 'ay'
        else
            counter = 0
            while !(['a', 'e', 'i', 'o', 'u'].include? word[counter])
                if word[counter] == 'q'
                    counter += 2
                else
                    counter += 1
                end
            end
            return word[counter..-1] + word[0...counter] + 'ay'
        end
    end
end