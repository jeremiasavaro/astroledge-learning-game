# Create planet 1
planeta1 = Planet.create(name: 'Saturn')

# Create levels for planeta1
planeta1.levels.create(number: 1)
planeta1.levels.create(number: 2)
planeta1.levels.create(number: 3)

# Verificar si los niveles se crearon correctamente
puts "Niveles del planeta1: #{planeta1.levels.inspect}"

# Create question for level1
level11 = planeta1.levels.first
level11.questions.create(description: '¿Cuál es el planeta más cercano al Sol?')

# Create answers for question1
question1 = level11.questions.first
question1.answers.create(description: 'Venus', correct: false)
question1.answers.create(description: 'Marte', correct: false)
question1.answers.create(description: 'Mercurio', correct: true)
question1.answers.create(description: 'Jupiter', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question1.answers.inspect}"

# question 2

level11.questions.create(description: '¿Qué objeto del sistema solar es conocido por tener anillos alrededor de él?')

# Create answers for question2
question2 = level11.questions.second
question2.answers.create(description: 'Neptuno', correct: false)
question2.answers.create(description: 'Marte', correct: false)
question2.answers.create(description: 'Saturno', correct: true)
question2.answers.create(description: 'Urano', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question2.answers.inspect}"


# Verificar si las preguntas se crearon correctamente
puts "Preguntas del level11: #{level11.questions.inspect}"

#--------

# Create planet 2
planeta2 = Planet.create(name: 'Venus')
# Create levels for planet1
planeta2.levels.create(number: '1')
planeta2.levels.create(number: '2')
planeta2.levels.create(number: '3')

# Verificar si los niveles se crearon correctamente
puts "Niveles del planeta1: #{planeta2.levels.inspect}"

# Create question for level1
level12 = planeta2.levels.first
level12.questions.create(description: '¿Cuál es la estrella más cercana a la Tierra después del Sol?')

# Create answers for question1
question1 = level12.questions.first
question1.answers.create(description: 'Alfa Centauri', correct: true)
question1.answers.create(description: 'Sirio', correct: false)
question1.answers.create(description: 'Betelgeuse', correct: false)
question1.answers.create(description: 'Próxima Centauri', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question1.answers.inspect}"

# question 2

level12.questions.create(description: '¿Cuál es el nombre del primer satélite artificial enviado al espacio por la humanidad?')
# Create answers for question2
question2 = level12.questions.second
question2.answers.create(description: 'Luna', correct: false)
question2.answers.create(description: 'Sputnik 1', correct: true)
question2.answers.create(description: 'Hubble', correct: false)
question2.answers.create(description: 'Voyager 1', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question2.answers.inspect}"

# Verificar si las preguntas se crearon correctamente
puts "Preguntas del level11: #{level12.questions.inspect}"

#--------

# Create planet 3
planeta3 = Planet.create(name: 'Earth')
# Create levels for planet1
planeta3.levels.create(number: '1')
planeta3.levels.create(number: '2')
planeta3.levels.create(number: '3')

# Verificar si los niveles se crearon correctamente
puts "Niveles del planeta1: #{planeta3.levels.inspect}"

# Create question for level1
level13 = planeta3.levels.first
level13.questions.create(description: '¿Cuál es el nombre de la galaxia en la que se encuentra nuestro sistema solar?', level_id: 1)
# Create answers for question1
question1 = level13.questions.first
question1.answers.create(description: 'Andromeda', correct: false)
question1.answers.create(description: 'Via Lactea', correct: true)
question1.answers.create(description: 'Eliptica', correct: false)
question1.answers.create(description: 'Comulo de Virgo', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question1.answers.inspect}"

# question 2

level13.questions.create(description: '¿Cuál es la teoría científica que describe el origen del universo a partir de una explosión inicial?', level_id: 1)
# Create answers for question2
question2 = level13.questions.second
question2.answers.create(description: 'Teoría de la relatividad', correct: false)
question2.answers.create(description: 'Teoria del caos', correct: false)
question2.answers.create(description: 'Teoría del Big Bang', correct: true)
question2.answers.create(description: 'Teoría de cuerdas', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question2.answers.inspect}"


# Verificar si las preguntas se crearon correctamente
puts "Preguntas del level11: #{level13.questions.inspect}"

#--------

# Create planet 4
planeta4 = Planet.create(name: 'Mercurio')
# Create levels for planet1
planeta4.levels.create(number: '1')
planeta4.levels.create(number: '2')
planeta4.levels.create(number: '3')

# Verificar si los niveles se crearon correctamente
puts "Niveles del planeta1: #{planeta4.levels.inspect}"

# Create question for level1
level14 = planeta4.levels.first
level14.questions.create(description: '¿Cuál es el nombre del primer astronauta en caminar sobre la Luna?')
# Create answers for question1
question1 = level14.questions.first
question1.answers.create(description: 'Yuri Gagarin', correct: false)
question1.answers.create(description: 'Neil Armstrong', correct: true)
question1.answers.create(description: 'Buzz Aldrin', correct: false)
question1.answers.create(description: 'Alan Shepard', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question1.answers.inspect}"

# question 2

level14.questions.create(description: '¿Qué fenómeno astronómico ocurre cuando la Luna bloquea completamente la luz solar hacia la Tierra?')
# Create answers for question2
question2 = level14.questions.second
question2.answers.create(description: 'Eclipse solar', correct: true)
question2.answers.create(description: 'Eclipse lunar', correct: false)
question2.answers.create(description: 'Fase lunar', correct: false)
question2.answers.create(description: 'Meteorito', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question2.answers.inspect}"


# Verificar si las preguntas se crearon correctamente
puts "Preguntas del level11: #{level14.questions.inspect}"

#--------

# Create planet 5
planeta5 = Planet.create(name: 'Marte')
# Create levels for planet1
planeta5.levels.create(number: '1')
planeta5.levels.create(number: '2')
planeta5.levels.create(number: '3')

# Verificar si los niveles se crearon correctamente
puts "Niveles del planeta1: #{planeta5.levels.inspect}"

# Create question for level1
level15 = planeta5.levels.first
level15.questions.create(description: '¿Cuál es el nombre del planeta conocido como el "planeta rojo" debido a su color característico?')
# Create answers for question1
question1 = level15.questions.first
question1.answers.create(description: 'Jupiter', correct: false)
question1.answers.create(description: 'Marte', correct: true)
question1.answers.create(description: 'Mercurio', correct: false)
question1.answers.create(description: 'Venus', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question1.answers.inspect}"

# question 2

level15.questions.create(description: '¿Cuál es el nombre de la constelación que contiene la Estrella Polar?')
# Create answers for question2
question2 = level15.questions.second
question2.answers.create(description: 'Osa menor', correct: true)
question2.answers.create(description: 'Ursa Mayor', correct: false)
question2.answers.create(description: 'Leo', correct: false)
question2.answers.create(description: 'Pegaso', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question2.answers.inspect}"


# Verificar si las preguntas se crearon correctamente
puts "Preguntas del level11: #{level15.questions.inspect}"

#--------

# Create planet 6
planeta6 = Planet.create(name: 'Jupiter')
# Create levels for planet1
planeta6.levels.create(number: '1')
planeta6.levels.create(number: '2')
planeta6.levels.create(number: '3')

# Verificar si los niveles se crearon correctamente
puts "Niveles del planeta1: #{planeta6.levels.inspect}"

# Create question for level1
level16 = planeta6.levels.first
level16.questions.create(description: ' ¿Cuál es la estrella más brillante en el cielo nocturno?')
# Create answers for question1
question1 = level16.questions.first
question1.answers.create(description: 'Sirio', correct: true)
question1.answers.create(description: 'Alfa Centauri', correct: false)
question1.answers.create(description: 'Betelgeuse', correct: false)
question1.answers.create(description: 'Canopus', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question1.answers.inspect}"

# question 2

level16.questions.create(description: '¿Cuál es la teoría que postula que el universo está en constante expansión desde un punto inicial extremadamente denso y caliente?')
# Create answers for question2
question2 = level16.questions.second
question2.answers.create(description: 'Teoría de la relatividad general', correct: false)
question2.answers.create(description: 'Teoría del Big Bang', correct: true)
question2.answers.create(description: 'Teoría de la gravedad cuántica', correct: false)
question2.answers.create(description: 'Teoría de la inflación cósmica', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question2.answers.inspect}"


# Verificar si las preguntas se crearon correctamente
puts "Preguntas del level11: #{level16.questions.inspect}"

#--------

# Create planet 7
planeta7 = Planet.create(name: 'Uranus')
# Create levels for planet1
planeta7.levels.create(number: '1')
planeta7.levels.create(number: '2')
planeta7.levels.create(number: '3')

# Verificar si los niveles se crearon correctamente
puts "Niveles del planeta1: #{planeta7.levels.inspect}"

# Create question for level1
level17 = planeta7.levels.first
level17.questions.create(description: '¿Cuál es el nombre de la luna más grande de Saturno?')
# Create answers for question1
question1 = level17.questions.first
question1.answers.create(description: 'Deimos', correct: false)
question1.answers.create(description: 'Europa', correct: false)
question1.answers.create(description: 'Titan', correct: true)
question1.answers.create(description: 'Ganímedes', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question1.answers.inspect}"

# question 2

level17.questions.create(description: '¿Cuál es el nombre del proceso mediante el cual las estrellas producen energía?')
# Create answers for question2
question2 = level17.questions.second
question2.answers.create(description: 'Fusión nuclear', correct: true)
question2.answers.create(description: 'Fisión nuclear', correct: false)
question2.answers.create(description: 'Combustión estelar', correct: false)
question2.answers.create(description: 'Desintegración radioactiva', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question2.answers.inspect}"


# Verificar si las preguntas se crearon correctamente
puts "Preguntas del level11: #{level17.questions.inspect}"

#--------

# Create planet 8
planeta8 = Planet.create(name: 'Pluto')
# Create levels for planet1
planeta8.levels.create(number: '1')
planeta8.levels.create(number: '2')
planeta8.levels.create(number: '3')

# Verificar si los niveles se crearon correctamente
puts "Niveles del planeta1: #{planeta8.levels.inspect}"

# Create question for level1
level18 = planeta8.levels.first
level18.questions.create(description: '¿Cuál es el nombre del proceso mediante el cual una estrella masiva colapsa bajo su propia gravedad al final de su ciclo de vida?')
# Create answers for question1
question1 = level18.questions.first
question1.answers.create(description: 'Supernova', correct: true)
question1.answers.create(description: 'Novena', correct: false)
question1.answers.create(description: 'Supernova remanente', correct: false)
question1.answers.create(description: 'Nebulosa planetaria', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question1.answers.inspect}"

# question 2

level18.questions.create(description: '¿Cuál es el nombre del punto en el espacio donde la gravedad es tan fuerte que nada, ni siquiera la luz, puede escapar de ella?')
# Create answers for question2
question2 = level18.questions.second
question2.answers.create(description: 'Agujero negro', correct: true)
question2.answers.create(description: 'Púlsar', correct: false)
question2.answers.create(description: 'Estrella de neutronesa', correct: false)
question2.answers.create(description: 'Quásar', correct: false)

# Verificar si las respuestas se crearon correctamente
puts "Respuestas de la pregunta1: #{question2.answers.inspect}"


# Verificar si las preguntas se crearon correctamente
puts "Preguntas del level11: #{level18.questions.inspect}"
