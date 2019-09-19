student_count = 11
# first, we print the list of students
students = [

{name: "Dr. Hannibal Lecter", cohort:  :november, hobbies: :golf},
{name: "Darth Vader", cohort: :november, hobbies: :golf},
{name: "Nurse Ratched", cohort: :november, hobbies: :golf},
{name: "Michael Corleone", cohort: :november, hobbies: :golf},
{name: "Alex Delarge", cohort: :november, hobbies: :golf},
{name: "The Wicked Witch of the West", cohort: :november, hobbies: :golf},
{name: "terminator", cohort: :november, hobbies: :golf},
{name: "Freddy Krueger", cohort: :november, hobbies: :golf},
{name: "The Joker",  cohort: :november, hobbies: :golf},
{name: "Joffrey Baratheon", cohort: :november, hobbies: :golf},
{name: "Norman Bates", cohort: :november, hobbies: :golf},
]

def input_students
  puts "Please enter the names of the students"
  puts "To finish. just git return twice"
  students = []
  name = gets.chomp
  name = name.to_sym
  cohort = gets.chomp
  cohort = cohort.to_sym
  while !name.empty? && !cohort.empty? do
    students << {name: name, cohort: cohort, hobbies: :golf}
    puts "Now we have #{students.count} students"
    name= gets.chomp
    name = name.to_sym
    if name.empty?
      puts "Please enter a name. If you wish to finish the list, "
      name = 'temp'
      name = name.to_sym
    end
    if cohort.empty?
      cohort = ('month').to_sym
    end
    cohort = gets.chomp
    cohort = cohort.to_sym
  end
students
end

def print_header()
  puts "The students of Villains Academy"
  puts "____________"
end

def print(students)
#  for x in students[:cohort] do
    students.each_with_index do |student, index|
    #if student[:name].start_with?("b") == true && student[:name].length < 13
      puts "#{index + 1}, #{student[:name]} (#{student[:cohort]} cohort) #{student[:hobbies]}"
    end
  end
#end


def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def interatcive_menu()
  students = []
  loop do
    puts "1. Input the students"
    p "2. Show the students"
    p "9. Exit"
    selection= gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      print_header()
      print(students)
      print_footer(students)
    when "9"
      exit 
    else
      puts "I don't know what you meant, try again"
    end
  end
end

interatcive_menu()
