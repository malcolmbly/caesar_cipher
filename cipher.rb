def caesar_cipher(string, shift)
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

        # offset the numbers so that it's always between 0 and 25.
        offset = 0
        if number >= 65 && number <= 90
            offset = 65
        elsif number >= 97 && number <= 122
            offset = 97
        end
        # put number between 0 and 25 by using offset.
        number -= offset
        # ubtracting by the proper case, we can normalize the letters to be between 0 and 25
        number += shift

        # wrap the numbers around so that it's always between 0 and 25.
        if number > 25
            number -= 26
        elsif number < 0
            number += 26
        end

        number += offset
    }
end

caesar_cipher("abcd", -5)