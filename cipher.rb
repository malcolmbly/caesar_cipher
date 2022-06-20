def caesar_cipher(string, shift)
    #TODO: convert letter to number, save the case of letters, 
    # shift by shift amount and then wrap around with z-a part
    # 'A'.ord - 65
    # 'Z'.ord - 90
    # 'a'.ord - 97
    # 'z'.ord - 122
    # ' '.ord - 32
    shift = shift % 26
    stringAsNumberArray = string2num(string)
    shiftedStringAsNumberArray = shiftString(stringAsNumberArray, shift)
end

def string2num(string)

    string.split("").map{ |char| char.ord}
end

def shiftString(numbers, shift)
    numbers.each {|number|
        number += shift
        if number > 90 && number < 97
            number = 65 + (number - 90)
        elsif number > 122
            number = 97
    }
end

caesar_cipher("test", 2)