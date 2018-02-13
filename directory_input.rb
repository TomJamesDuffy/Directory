def input_students
  puts "Please enter the students name"
  puts "To cease entering names hit enter twice"
  input_name = gets.chomp
  # create empty array
  students = []
  while !input_name.empty? do
    students << {name: input_name, cohort: :november}
    puts "we now have #{students.count} students"
    input_name = gets.chomp
  end
  # return the array of students
  students
end
