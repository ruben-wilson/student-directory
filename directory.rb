students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

def print_header
  puts "The students of Villains Academy".center(125)
  puts  "-------------".center(125)
end

def print(students)
  i = 0
  while i < students.length
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)".center(125)
    i += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(125)
end

def input_students
  puts "Please enter the names of the students".center(125)
  puts "To finish, just hit return twice".center(125)

  students = []
  month = :november
  name = gets.chomp

  while !name.empty? do
    puts "Please enter you'r cohort".center(125)

    month = gets.chomp
    if month.empty?
      month = :november
    end

    students << {name: name, cohort: month.to_s}
    puts "Now we have #{students.count} students".center(125)
    

    name = gets.chomp
  end

  students
end

students = input_students
print_header()
print(students)
print_footer(students)