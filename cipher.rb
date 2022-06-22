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
    shiftedStringAsNumberArray = shiftNumbers(stringAsNumberArray, shift)
    shiftedString = numArray2String(shiftedStringAsNumberArray)
    p shiftedString
    return shiftedString
end

def string2num(string)

    string.split("").map{ |char| char.ord}
end

def numArray2String(numbers)

    numbers.reduce(""){ |str, number| str + number.chr}
end

def shiftNumbers(numbers, shift)
    
    numbers.map {|number|

        offset = 0
        if number >= 65 && number <= 90
            offset = 65
        elsif number >= 97 && number <= 122
            offset = 97
        else
            #no point in shifting punctuation
            return
        end

        number -= offset
        #subtracting by the proper case, we can normalize the letters to be between 0 and 25
        number += shift

        if number > 25
            number -= 26
        elsif number < 0
            number += 26
        end

        number += offset

        #check range that number is starting in, normalize it to 0-26,
        # then shift it into that range again.
        # ranges are a-z, A-Z, or misc. characters
    }
end

caesar_cipher("abcd", -5)