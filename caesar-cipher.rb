print "Enter a String: "
string = gets.chomp.to_s

print "Enter a Number to shift: "
shift = gets.chomp.to_i

def caesar_cipher string, shift
    string = string.split("")
    string = string.map do |item|
        if item.ord >= 97 && item.ord <= 122
            item = item.ord + shift
            if item.ord > 122
                item = item.ord
                item = item - 122 + 97 - 1
                item.chr
            else
                item.chr
            end
        elsif item.ord >= 65 && item.ord <= 90
            item = item.ord + shift
            if item.ord > 90
                item = item.ord
                item = item - 90 + 65 - 1
                item.chr
            else
                item.chr
            end
        else
            item
        end
    end
    string.join("")
end

puts caesar_cipher string, shift
