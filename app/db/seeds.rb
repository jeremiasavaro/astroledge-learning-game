users.each do |u|
  User.create(u)
end

questions.each do |question|
  Question.create(question)
end
