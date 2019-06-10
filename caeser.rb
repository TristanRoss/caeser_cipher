def caeser_cipher(str, num)
    char_array = str.chars
    for x in 0..str.length - 1
        conversion_ord = char_array[x].ord
        if (conversion_ord > 64 && conversion_ord < 91) || (conversion_ord > 96 && conversion_ord < 123)
            if conversion_ord > 64 && conversion_ord < 91
                if conversion_ord + num >= 91
                    str[x] = (65 + num - (90 - conversion_ord) - 1).chr
                else
                    str[x] = (conversion_ord + num).chr
                end
            else
                if conversion_ord + num >= 123
                    str[x] = (97 + num - (122 - conversion_ord) - 1).chr
                else
                    str[x] = (conversion_ord + num).chr
                end
            end
        end
    end
    puts str   
end

caeser_cipher("What a string!", 5)