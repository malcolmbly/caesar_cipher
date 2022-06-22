def caesar_cipher(string, shift)
    #TODO: convert letter to number, save the case of letters, 
    # shift by shift amount and then wrap around with z-a part
    # 'A'.ord - 65
    # 'Z'.ord - 90
    # 'a'.ord - 97
    # 'z'.ord - 122
    # ' '.ord - 32
    shift = shift % 26
    #make shift between 0 and 25, since that's the size of the alphabet
    stringAsNumberArray = string2num(string)
    shiftedStringAsNumberArray = shiftString(stringAsNumberArray, shift)
end

def string2num(string)

    string.split("").map{ |char| char.ord}
end

def shiftString(numbers, shift)
    
    numbers.map {|number|

        letterCase = nil
        if number >= 65 && number <= 90
            letterCase = "upper"
        elsif number >= 97 && number <= 122
            letterCase = "lower"
        else
            #no point in shifting punctuation
            return
        end
            
        if letterCase === "lower"
            number -= 97
        elsif letterCase === "upper"
            number -= 65
        end
            #subtracting by the proper case, we can normalize the letters to be between 0 and 26

        number += shift
        #check range that number is starting in, normalize it to 0-26,
        # then shift it into that range again.
        # ranges are a-z, A-Z, or misc. characters
    }
end

caesar_cipher("test", 2)