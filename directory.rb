# put students into an array
students = [
 "Dr. Hannibal Lecter"
 "Darth Vader"
 "Nurse Ratched"
 "Michael Corleone"
 "Alex DeLarge"
 "The Wicked Witch of the West"
 "Terminator"
 "Freddy Krueger"
 "The Joker"
 "Joffrey Baratheon"
 "Norman Bates"
]

# then print them
puts "The students of Villains Academy"
"-------------"

students.each do |s|
  puts s
end

# then print the total
puts "Overall, we have #{students.count} great students"
