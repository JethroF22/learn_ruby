def echo arg
    arg
end

def shout arg
    arg.upcase
end

def repeat *args
    if args.length == 1
        return args[0] + ' ' + args[0]
    else
        string = ''
        args[1].times do 
            string += (args[0] + ' ')
        end
        return string[0..-2]
    end
end

def start_of_word word, index
    word[0..(index - 1)]
end

def first_word word
    word.split(' ')[0]
end

def titleize word
    titleized = ''
    words = word.split(' ')
    words[0] = words[0][0].upcase + words[0][1..-1] 
    words.each do |word|
        if word != 'and' && word != 'to' && word != 'over' && word != 'the'
            titleized += word[0].upcase + word[1..-1] + ' '
        else
            titleized += word + ' '
        end
        
    end
    titleized[0...-1]
end
