@students = [] # an empty array accessible to all methods

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(selection)
  case selection
  when "1"
    puts "1 was selected"
    input_students
  when "2"
    puts "2 was selected"
    show_students
  when "3"
    puts "3 was selected"
    save_students
  when "4"
    puts "4 was selected"
    load_students
  when "9"
    puts "9 was selected"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, try again"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    add_to_students 
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = STDIN.gets.chomp
  end
end

def add_to_students
  @students << {name: name, cohort: :november}
end

def show_students
  print_header
  print_student_list
  print_footer
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  puts "What is the name you would like to save the file"
  filename = gets.chomp
  # open the file for writing
  CSV.open(filename), "wb") do |csv|
  # iterate over the array of students
    @students.each do |student|
      csv << [student[:name], student[:cohort]]
    end
  end
  file.close
end

def load_students(filename = "students.csv")
  puts "What is the name of the file"
  filename = gets.chomp
  CSV.foreach(filename) do |row|
      name, cohort = row.chomp.split(',')
      add_to_students
  end
end

def try_load_students
  if File.exists? "students.csv" # if it exists
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    filename = "students.csv"
    puts "Sorry, #{filename} doesn't exist."
  end
end

try_load_students
interactive_menu
