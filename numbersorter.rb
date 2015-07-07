array = Array.new
arraycomplete = 0
while arraycomplete < 1 do
puts "Input your phone number to format it correctly:"
  # removing chomp from the line below fixed the NilClass errors I was having when I changed the conditional of the if statement to a measurement of the string. Not exactly sure why, but it worked.
phonenumber = gets.gsub!(/[^0-9]/,"")

  if phonenumber.size == 10
    then arraycomplete = 1
  else puts "Invalid. Please input a string of 10 numbers."
    end
end
  
array = phonenumber.split("")
  
areacode = "(" + array.fetch(0) + array.fetch(1) + array.fetch(2) + ")"
first3reg = array.fetch(3) + array.fetch(4) + array.fetch(5)
last4 = array.fetch(6) + array.fetch(7) + array.fetch(8) + array.fetch(9)
puts "#{areacode} #{first3reg}-#{last4}"



