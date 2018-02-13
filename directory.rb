# Put current students into an array of hashes.
 
students = [
 {name: "Dr. Hannibal Lecter", cohort: :november},
 {name: "Darth Vader",cohort: :november},
 {name: "Nurse Ratched",cohort: :november},
 {name: "Michael Corleone",cohort: :november},
 {name: "Alex DeLarge",cohort: :november},
 {name: "The Wicked Witch of the West",cohort: :november},
 {name: "Terminator",cohort: :november},
 {name: "Freddy Krueger",cohort: :november},
 {name: "The Joker",cohort: :november},
 {name: "Joffrey Baratheon",cohort: :november},
 {name: "Norman Bates",cohort: :november}
]

# Method to add additional students as required

def input_students(current_students)
  puts "Please enter the students name"
  puts "To cease entering names hit enter twice"
  input_name = gets.chomp
  # create empty array
  while !input_name.empty? do
    current_students << {name: input_name, cohort: :november}
    puts "we now have #{current_students.count} students"
    input_name = gets.chomp
  end
  current_students
end

# Method to print the header

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Method to print each student 

def print(students)
  count = 0
  while count < students.length
    puts "#{count + 1}. #{students[count][:name]} (#{students[count][:cohort]} cohort)" # Ex 4 - Replace each for while.  
    count += 1
  end
# students.each_with_index do |student, index|
 # if student[:name].upcase[0] == 'D' && student[:name].length > 12 # Ex 2 & 3 - Print if begin 'D' & > 12 charachters.
  #  puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)" # Ex 1 - Add number using each_with_index.
 # end
# end
end

# Method to print each student

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# Call methods and print output
input_students(students)
print_header
print(students)
print_footer(students)
