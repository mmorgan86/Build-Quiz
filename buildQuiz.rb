# Build-a-Quiz
# Build a quiz program that gets a few inputs from the user including:
# 1. number of questions
# 2. questions
# 3. answers
# Then clear the screen and begin the quiz. Keep score!


# Ask number of questions
puts "How many questions will this quiz consist of?"
question_count = gets.chomp.to_i
question_hash = {}
score = 0




question_count.times do |question_number|
  question_number += 1
  puts "Please enter question number #{question_number}"
  question = gets.chomp
  puts "Please enter the anwser to question number #{question_number}"
  answer = gets.chomp.downcase
  question_hash[question] = answer
end

# clear screen
puts `cls`

# get questions and answers
question_hash.each do |question, answer|
  puts question
  guess = gets.chomp.downcase
  if guess == answer
    puts "Congratulations you got it right"
    score += 1
  else
    puts "WRONG!!!!!"
  end
end

puts "You got #{score} correct out of #{question_count}"
