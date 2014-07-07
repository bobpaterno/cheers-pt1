#Build on the results of our inclass exploration to output, for example
#
# Give me an A
# Give me a B
# Give me a B
# Give me a Y
# Abby's just GRAND!
# When given the input of Abby
#
# Note the "a" vs "an"
#
require 'date'

puts "What's your name"

name = gets
name = name.chomp

if name.empty?
  puts "You must enter a name"
  exit
end
puts "Your name is #{name}"
name.each_char do |char|
  outStr = "Give me a"
  char.match(/[aeifhlmnrsxo]/i) { outStr = "#{outStr}n..." }
  puts outStr+" #{char}"
end
puts "#{name.upcase}'s just GRAND!"

puts "Hey #{name}, what's your birthday (yyyy/mm/dd)?"
bday = gets
bday = Date.parse(bday)
day = bday.day
month = bday.mon

today = Date.today
thisBday  = Date.new(today.year, month, day).jd
todayJd = today.jd

daysUntil = thisBday-todayJd

if thisBday-todayJd < 0
  thisBday  = Date.new(today.year+1, month, day).jd
  daysUntil = thisBday-todayJd
end

outStr = "Awesome! Your birthday is in #{daysUntil} days! Happy Birthday in advance! "
puts outStr

