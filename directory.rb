student_count = 11
# first, we print the list of students
students = [
"The students of villain's academy",
"____________",
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex Delarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]

def print_header()
  puts "The students of Villains Academy"
  puts "____________"
end

def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
print_header
print(students)
print_footer(students)
