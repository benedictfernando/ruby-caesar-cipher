def caesar_cipher(word, shift)
    # convert alphabet range into an array
    lower = ('a'..'z').to_a
    upper = lower.map { |letter| letter.upcase }
    letters = lower.size 

    # check for each character from 'word'
    word.chars.map do |x|
        case true
        when lower.include?(x) 
            lower[lower.find_index(x) + shift - letters]
        when upper.include?(x)
            upper[upper.find_index(x) + shift - letters]
        else x
        end
    end.join    # return output
end

puts caesar_cipher("What a string!", 5)