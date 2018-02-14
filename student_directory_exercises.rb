# Put current students into an array of hashes.
 
students = [
 {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: "art"}, # Ex 5 - Added hobbies
 {name: "Darth Vader",cohort: :february, hobbies: "art"},
 {name: "Nurse Ratched",cohort: :november, hobbies: "art"},
 {name: "Michael Corleone",cohort: :november, hobbies: "art"},
 {name: "Alex DeLarge",cohort: :november, hobbies: "art"},
 {name: "The Wicked Witch of the West",cohort: :november, hobbies: "art"},
 {name: "Terminator",cohort: :march, hobbies: "art"},
 {name: "Freddy Krueger",cohort: :november, hobbies: "art"},
 {name: "The Joker",cohort: :february, hobbies: "art"},
 {name: "Joffrey Baratheon",cohort: :november, hobbies: "art"},
 {name: "Norman Bates",cohort: :november, hobbies: "art"}
]

# Method to add additional students as required

def input_students(current_students) # Ex 7 - Requests name, cohort, hobbies, deals with empty value, allows user to edit.
# Ex 10 - Replace chomp with .gsub("\n", "")
  finished = false
  until finished
    puts "add - adds student, edit - edits student, exit - exits program"
    choice = gets.gsub("\n", "")
    if choice == "add"
      puts "name?"
      name = gets.gsub("\n", "")
        if name == ""
          name = "no name entered"
        end
      puts "cohort?"
      cohort = gets.gsub("\n", "")
        if cohort == ""
          cohort = "no cohort entered"
        end
      puts "hobbies?"
      hobbies = gets.gsub("\n", "")
        if hobbies == ""
          hobbies = "no hobbies entered"
        end
      current_students << {name: name.to_sym, cohort: cohort.to_sym, hobbies: hobbies.to_sym}
    elsif choice == "edit"
      puts "enter name of student"
      edit_student = gets.gsub("\n", "")
      current_students.each do |h|
        if h[:name] == edit_student
          puts "what would you like to edit?"
          puts "name, cohort or hobbies"
          edit_variable = gets.gsub("\n", "")
          if edit_variable == "name"
            puts "enter what you wish the name to be"
            name = gets.gsub("\n", "")
            h[:name] = name
          elsif edit_variable == "cohort"
            puts "enter desired cohort"
            cohort = gets.gsub("\n", "")
            h[:cohort] = cohort
          elsif edit_variable == "hobbies"
            puts "enter desired hobby"
            hobby = gets.gsub("\n", "")
            h[:hobbies] = hobby
          end
        end
      end
    elsif choice == "exit"
      finished = true
    end
  end
  current_students
end

# Method to print the header

def print_header
  puts "The students of Villains Academy".center(100)
  puts "-------------".center(100)
end

# Method to print each student 

def print(students)
  cohort_array = []
# Ex 8 - Print out students grouped by cohort.
  students.each do |s|
    cohort_array.push(s[:cohort])
  end
  cohort_array.uniq.each do |x|
    puts x
    students.each do |s|
      if s[:cohort] == x
        puts s
      end
    end
  end

# Ex 4 - Replace each for while.
# count = 0
# while count < students.length
  # puts "#{count + 1}. #{students[count][:name]} (#{students[count][:cohort]} cohort) #{students[count][:hobbies]}".center(100) 
  # count += 1
# end

# Ex 1 - Use each loop to print students
# students.each_with_index do |student, index|
 # if student[:name].upcase[0] == 'D' && student[:name].length > 12 # Ex 2 & 3 - Print if begin 'D' & > 12 charachters.
  #  puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)" # Ex 1 - Add number using each_with_index.
 # end
# end
end

# Method to print each student

def print_footer(students)
  if students.length == 1
    puts "Overall, we have #{students.count} great student".center(100) #Ex 9 - If only one student.
  else  
    puts "Overall, we have #{students.count} great students".center(100)
  end
end

# Call methods and print output
input_students(students)
print_header
print(students)
print_footer(students)
#Ex 6 - Center output
