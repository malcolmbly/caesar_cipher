def caesar_cipher(string, shift)
    #TODO: convert letter to number, save the case of letters, 
    # shift by shift amount and then wrap around with z-a part
    # 'A'.ord - 65
    # 'Z'.ord - 90
    # 'a'.ord - 97
    # 'z'.ord - 122
    # ' '.ord - 32

    stringAsNumberArray = string2num(string)
    p stringAsNumberArray
end

def string2num(string)

    string.split("").map{ |char| char.ord}
end

caesar_cipher("test", 2)