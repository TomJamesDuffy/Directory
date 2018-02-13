# put students into an array
students = [
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "Terminator",
 "Freddy Krueger",
 "The Joker",
 "Joffrey Baratheon",
 "Norman Bates"
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_names(students)
  students.each do |s_name|
    puts s_name
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

print_header
print_names(students)
print_footer(students)
