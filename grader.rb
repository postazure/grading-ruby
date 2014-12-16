require_relative "./lib/determine_diff"
require "json"

file = File.read('./data/grades.json')
data_hash = JSON.parse(file)


incline_count = {}
decline_count = {}


data_hash.each do |student_name, student_grades|
 grade_arr = DetermineDiff.diff(student_grades)

  if DetermineDiff.decline?(grade_arr)
    decline_count[student_name] = student_grades
  else
    incline_count[student_name] = student_grades
  end
end


puts "Decline Count: #{decline_count.count}"
puts "Incline Count: #{incline_count.count}"
