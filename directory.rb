student_count = 11


# first, we print the list of students
students = [
"The students of villain's academy"
"____________"
"Dr. Hannibal Lecter"
"Darth Vader"
"Nurse Ratched"
"Michael Corleone"
"Alex Delarge"
"The Wicked Witch of the West"
"Terminator"
"Freddy Krueger"
"The Joker"
"Joffrey Baratheon"
"Norman Bates"
]

puts "The students of Villains Academy"
puts "____________"
students.each do |student|
  puts student
end

#finally, we print the total number of students
puts "Overall, we have #{students.count} great students"
# it's important that prince() doesn't add new line character
