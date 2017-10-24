class Book
    attr_writer :title

    def title
        titleize @title
    end
end

def titleize word
    titleized = ''
    words = word.split(' ')
    words[0] = words[0][0].upcase + words[0][1..-1] 
    words.each do |word|
        if !(['and', 'to', 'over', 'the', 'in', 'on', 'the', 'of', 'a', 'an'].include? word) 
            titleized += word[0].upcase + word[1..-1] + ' '
        else
            titleized += word + ' '
        end
        
    end
    titleized[0...-1]
end
