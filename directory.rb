# Put current students into an array of hashes.
 
students = [
 {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: "art"}, # Ex 5 - Added hobbies
 {name: "Darth Vader",cohort: :november, hobbies: "art"},
 {name: "Nurse Ratched",cohort: :november, hobbies: "art"},
 {name: "Michael Corleone",cohort: :november, hobbies: "art"},
 {name: "Alex DeLarge",cohort: :november, hobbies: "art"},
 {name: "The Wicked Witch of the West",cohort: :november, hobbies: "art"},
 {name: "Terminator",cohort: :november, hobbies: "art"},
 {name: "Freddy Krueger",cohort: :november, hobbies: "art"},
 {name: "The Joker",cohort: :november, hobbies: "art"},
 {name: "Joffrey Baratheon",cohort: :november, hobbies: "art"},
 {name: "Norman Bates",cohort: :november, hobbies: "art"}
]

# Method to add additional students as required

def input_students(current_students) # Ex 7 - Requests name, cohort, hobbies, deals with empty value, allows user to edit.
  finished = false
  until finished
    puts "add - adds student, edit - edits student, exit - exits program"
    choice = gets.chomp
    if choice == "add"
      puts "name?"
      name = gets.chomp
        if name == ""
          name = "no name entered"
        end
      puts "cohort?"
      cohort = gets.chomp
        if cohort == ""
          cohort = "no cohort entered"
        end
      puts "hobbies?"
      hobbies = gets.chomp
        if hobbies == ""
          hobbies = "no hobbies entered"
        end
      current_students << {name: name.to_sym, cohort: cohort.to_sym, hobbies: hobbies.to_sym}
    elsif choice == "edit"
      puts "enter name of student"
      edit_student = gets.chomp
      current_students.each do |h|
        if h[:name] == edit_student
          puts "what would you like to edit?"
          puts "name, cohort or hobbies"
          edit_variable = gets.chomp
          if edit_variable == "name"
            puts "enter what you wish the name to be"
            name = gets.chomp
            h[:name] = name
          elsif edit_variable == "cohort"
            puts "enter desired cohort"
            cohort = gets.chomp
            h[:cohort] = cohort
          elsif edit_variable == "hobbies"
            puts "enter desired hobby"
            hobby = gets.chomp
            h[:hobbies] = hobby
          end
        end
      end
    elsif choice == "exit"
      finished = true
    end
  end
  print(current_students)
  current_students
end

# Method to print the header

def print_header
  puts "The students of Villains Academy".center(100)
  puts "-------------".center(100)
end

# Method to print each student 

def print(students)
  count = 0
  while count < students.length # Ex 4 - Replace each for while.
    puts "#{count + 1}. #{students[count][:name]} (#{students[count][:cohort]} cohort) #{students[count][:hobbies]}".center(100) 
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
  puts "Overall, we have #{students.count} great students".center(100)
end

# Call methods and print output
print_header
print(students)
print_footer(students)
input_students(students)
#Ex 6 - Center output
