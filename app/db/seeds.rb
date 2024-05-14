# Create planet
planeta1 = Planet.create(name: 'Saturn')
# Create levels for planet1
planeta1.levels.create(number: '1')
planeta1.levels.create(number: '2')
planeta1.levels.create(number: '3')

# Create question for level1
level1 = planeta1.levels.first
level1.questions.create(description: '¿Cuál es el planeta más cercano al Sol?')
# Create answers for question1
question1 = level1.questions.first
question1.answers.create(description: 'Venus', correct: false)
question1.answers.create(description: 'Marte', correct: false)
question1.answers.create(description: 'Mercurio', correct: true)
question1.answers.create(description: 'Jupiter', correct: false)
