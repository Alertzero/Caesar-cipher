def translate(string, shift)

temp_array = convert(string, shift)

temp_array.join   

end

def convert(string, shift)
        
        string.split("").map do |char|
        number = char.ord
            if char.between?('a','z')
                ((number - 'a'.ord + shift) % 26 + 'a'.ord).chr
            elsif char.between?('A','Z')
                ((number - 'A'.ord + shift) % 26 + 'A'.ord).chr
            else
                char
            end
        end

end

p translate("What a string!", 5) # "Bmfy f xywnsl!"
