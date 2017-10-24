class Timer

    def initialize
        self.seconds= 0
    end

    def seconds= seconds
        @seconds = seconds
    end

    def seconds
        @seconds
    end

    def time_string
        seconds = @seconds
        hours = 0
        while seconds >= 3600
            hours += 1
            seconds -= 3600
        end
        minutes = seconds / 60
        seconds = seconds % 60
        string = ''
        [hours, minutes, seconds].each do |number|
            string += pad_numbers(number) + ':'
        end
        string[0...-1]
    end

    private

    def pad_numbers number
        (number.to_s.length == 2 ? number.to_s : '0' + number.to_s)
    end
end
