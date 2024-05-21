# Define the planets, levels, questions, and answers using nested hashes
planets_data = [
  {
    name: 'Mercury',
    levels: [
      {
        number: 1,
        questions: [
          {
            description: 'What is the closest planet to the Sun?',
            scoreQuestion: 10,
            answers: [
              { description: 'Venus', correct: false },
              { description: 'Mars', correct: false },
              { description: 'Mercury', correct: true },
              { description: 'Jupiter', correct: false }
            ]
          },
          {
            description: 'Which object in the solar system is known for having rings around it?',
            scoreQuestion: 10,
            answers: [
              { description: 'Neptune', correct: false },
              { description: 'Mars', correct: false },
              { description: 'Saturn', correct: true },
              { description: 'Uranus', correct: false }
            ]
          }
        ]
      },
      {
        number: 2,
        questions: [
          {
            description: 'What astronomical phenomenon occurs when a celestial object enters the Earth\'s atmosphere and burns up partially or completely?',
            scoreQuestion: 10,
            answers: [
              { description: 'Shooting star', correct: false },
              { description: 'Comet', correct: false },
              { description: 'Meteor', correct: true },
              { description: 'Asteroid', correct: false }
            ]
          },
          {
            description: 'What is the name of the process by which a massive star collapses under its own gravity at the end of its life cycle?',
            scoreQuestion: 10,
            answers: [
              { description: 'Supernova', correct: true },
              { description: 'Nova', correct: false },
              { description: 'Supernova remnant', correct: false },
              { description: 'Planetary nebula', correct: false }
            ]
          }
        ]
      },
      {
        number: 3,
        questions: [
          {
            description: 'What is the largest planet in the solar system?',
            scoreQuestion: 10,
            answers: [
              { description: 'Earth', correct: false },
              { description: 'Jupiter', correct: true },
              { description: 'Saturn', correct: false },
              { description: 'Uranus', correct: false }
            ]
          },
          {
            description: 'Which planet has the shortest day in the solar system?',
            scoreQuestion: 10,
            answers: [
              { description: 'Jupiter', correct: true },
              { description: 'Mars', correct: false },
              { description: 'Mercury', correct: false },
              { description: 'Venus', correct: false }
            ]
          }
        ]
      }
    ]
  },
  {
    name: 'Venus',
    levels: [
      {
        number: 1,
        questions: [
          {
            description: 'What is the closest star to Earth after the Sun?',
            scoreQuestion: 10,
            answers: [
              { description: 'Alpha Centauri', correct: true },
              { description: 'Sirius', correct: false },
              { description: 'Betelgeuse', correct: false },
              { description: 'Proxima Centauri', correct: false }
            ]
          },
          {
            description: 'What is the name of the first artificial satellite sent into space by humanity?',
            scoreQuestion: 10,
            answers: [
              { description: 'Moon', correct: false },
              { description: 'Sputnik 1', correct: true },
              { description: 'Hubble', correct: false },
              { description: 'Voyager 1', correct: false }
            ]
          }
        ]
      },
      {
        number: 2,
        questions: [
          {
            description: 'What type of galaxy has a round or elliptical shape and contains primarily old stars?',
            scoreQuestion: 10,
            answers: [
              { description: 'Spiral galaxy', correct: false },
              { description: 'Irregular galaxy', correct: false },
              { description: 'Elliptical galaxy', correct: true },
              { description: 'Dwarf galaxy', correct: false }
            ]
          },
          {
            description: 'What is the name of the phenomenon in which two stars orbit around a common center of mass?',
            scoreQuestion: 10,
            answers: [
              { description: 'Binary', correct: true },
              { description: 'Variable', correct: false },
              { description: 'Nebula', correct: false },
              { description: 'Supernova', correct: false }
            ]
          }
        ]
      },
      {
        number: 3,
        questions: [
          {
            description: 'What is the second closest planet to the Sun?',
            scoreQuestion: 10,
            answers: [
              { description: 'Earth', correct: false },
              { description: 'Mars', correct: false },
              { description: 'Venus', correct: true },
              { description: 'Mercury', correct: false }
            ]
          },
          {
            description: 'Which planet is known as the Earth\'s twin due to its size and composition?',
            scoreQuestion: 10,
            answers: [
              { description: 'Venus', correct: true },
              { description: 'Mars', correct: false },
              { description: 'Jupiter', correct: false },
              { description: 'Saturn', correct: false }
            ]
          }
        ]
      }
    ]
  },
  {
    name: 'Earth',
    levels: [
      {
        number: 1,
        questions: [
          {
            description: 'What is the name of the galaxy in which our solar system is located?',
            scoreQuestion: 10,
            answers: [
              { description: 'Andromeda', correct: false },
              { description: 'Milky Way', correct: true },
              { description: 'Elliptical', correct: false },
              { description: 'Virgo Cluster', correct: false }
            ]
          },
          {
            description: 'What is the scientific theory that describes the origin of the universe from an initial explosion?',
            scoreQuestion: 15,
            answers: [
              { description: 'Theory of relativity', correct: false },
              { description: 'Chaos theory', correct: false },
              { description: 'Big Bang theory', correct: true },
              { description: 'String theory', correct: false }
            ]
          }
        ]
      },
      {
        number: 2,
        questions: [
          {
            description: 'What is a quasar?',
            scoreQuestion: 10,
            answers: [
              { description: 'A dying star', correct: false },
              { description: 'A supermassive black hole', correct: true },
              { description: 'A type of comet', correct: false },
              { description: 'A type of supernova', correct: false }
            ]
          },
          {
            description: 'What is the name of the region of spacetime where gravity is so strong that not even light can escape?',
            scoreQuestion: 15,
            answers: [
              { description: 'Point of no return', correct: false },
              { description: 'Singularity', correct: false },
              { description: 'Critical mass', correct: false },
              { description: 'Schwarzschild radius', correct: true }
            ]
          }
        ]
      },
      {
        number: 3,
        questions: [
          {
            description: 'What is the name of the asteroid belt located between Mars and Jupiter?',
            scoreQuestion: 10,
            answers: [
              { description: 'Kuiper Belt', correct: false },
              { description: 'Van Allen Belt', correct: false },
              { description: 'Asteroid Belt', correct: true },
              { description: 'Ring of Saturn', correct: false }
            ]
          },
          {
            description: 'What phenomenon occurs when Earth passes between the Sun and the Moon, casting a shadow on the Moon?',
            scoreQuestion: 10,
            answers: [
              { description: 'Solar eclipse', correct: false },
              { description: 'Lunar eclipse', correct: true },
              { description: 'Lunar phase', correct: false },
              { description: 'Solstice', correct: false }
            ]
          }
        ]
      }
    ]
  },
  {
    name: 'Mars',
    levels: [
      {
        number: 1,
        questions: [
          {
            description: 'What is the name of the planet known as the "red planet" due to its characteristic color?',
            scoreQuestion: 10,
            answers: [
              { description: 'Jupiter', correct: false },
              { description: 'Mars', correct: true },
              { description: 'Mercury', correct: false },
              { description: 'Venus', correct: false }
            ]
          },
          {
            description: 'What is the name of the constellation that contains the North Star?',
            scoreQuestion: 10,
            answers: [
              { description: 'Orion', correct: false },
              { description: 'Ursa Minor', correct: true },
              { description: 'Leo', correct: false },
              { description: 'Pegasus', correct: false }
            ]
          }
        ]
      },
      {
        number: 2,
        questions: [
          {
            description: 'What is a Type Ia supernova?',
            scoreQuestion: 10,
            answers: [
              { description: 'The explosion of a massive star at the end of its life', correct: false },
              { description: 'The merger of two stars in a binary system', correct: false },
              { description: 'The explosion of a white dwarf that reaches a critical mass', correct: true },
              { description: 'The fusion of two black holes', correct: false }
            ]
          },
          {
            description: 'What type of galaxy has a spiral shape with curved arms and contains a large amount of gas and dust?',
            scoreQuestion: 10,
            answers: [
              { description: 'Spiral galaxy', correct: true },
              { description: 'Elliptical galaxy', correct: false },
              { description: 'Irregular galaxy', correct: false },
              { description: 'Lenticular galaxy', correct: false }
            ]
          }
        ]
      },
      {
        number: 3,
        questions: [
          {
            description: 'What is the name of the NASA rover that landed on Mars in 2012?',
            scoreQuestion: 10,
            answers: [
              { description: 'Opportunity', correct: false },
              { description: 'Spirit', correct: false },
              { description: 'Curiosity', correct: true },
              { description: 'Perseverance', correct: false }
            ]
          },
          {
            description: 'What is the name of the supermassive black hole at the center of our galaxy?',
            scoreQuestion: 10,
            answers: [
              { description: 'Andromeda', correct: false },
              { description: 'Sagittarius A*', correct: true },
              { description: 'Milky Way', correct: false },
              { description: 'Cygnus X-1', correct: false }
            ]
          }
        ]
      }
    ]
  },
  {
    name: 'Jupiter',
    levels: [
      {
        number: 1,
        questions: [
          {
            description: 'What is the brightest star in the night sky?',
            scoreQuestion: 10,
            answers: [
              { description: 'Sirius', correct: true },
              { description: 'Alpha Centauri', correct: false },
              { description: 'Betelgeuse', correct: false },
              { description: 'Canopus', correct: false }
            ]
          },
          {
            description: 'What is the approximate distance in light-years between Earth and the center of the Milky Way?',
            scoreQuestion: 10,
            answers: [
              { description: '10 light-years', correct: false },
              { description: '100 light-years', correct: false },
              { description: '1,000 light-years', correct: false },
              { description: '10,000 light-years', correct: true }
            ]
          }
        ]
      },
      {
        number: 2,
        questions: [
          {
            description: 'What was the name of the first confirmed exoplanet orbiting a Sun-like star?',
            scoreQuestion: 10,
            answers: [
              { description: 'Kepler-186f', correct: false },
              { description: 'Proxima Centauri b', correct: false },
              { description: 'Trappist-1e', correct: false },
              { description: '51 Pegasi b', correct: true }
            ]
          },
          {
            description: 'What type of star is the Sun?',
            scoreQuestion: 10,
            answers: [
              { description: 'White dwarf', correct: false },
              { description: 'Red giant', correct: false },
              { description: 'Main sequence', correct: true },
              { description: 'Neutron star', correct: false }
            ]
          }
        ]
      },
      {
        number: 3,
        questions: [
          {
            description: 'What is the coldest planet in the solar system?',
            scoreQuestion: 10,
            answers: [
              { description: 'Saturn', correct: false },
              { description: 'Uranus', correct: true },
              { description: 'Neptune', correct: false },
              { description: 'Pluto', correct: false }
            ]
          },
          {
            description: 'What are the Van Allen belts?',
            scoreQuestion: 10,
            answers: [
              { description: 'Zones of high radiation around Jupiter', correct: false },
              { description: 'Asteroid belts around the Sun', correct: false },
              { description: 'Zones of high radiation around the Earth', correct: true },
              { description: 'Rings of Saturn', correct: false }
            ]
          }
        ]
      }
    ]
  },
  {
    name: 'Saturn',
    levels: [
      {
        number: 1,
        questions: [
          {
            description: 'What is the theory that proposes the universe is constantly expanding from an initial extremely dense and hot state?',
            scoreQuestion: 10,
            answers: [
              { description: 'General theory of relativity', correct: false },
              { description: 'Big Bang theory', correct: true },
              { description: 'Quantum gravity theory', correct: false },
              { description: 'Cosmic inflation theory', correct: false }
            ]
          },
          {
            description: 'What is the name of Saturn\'s largest moon?',
            scoreQuestion: 10,
            answers: [
              { description: 'Deimos', correct: false },
              { description: 'Europa', correct: false },
              { description: 'Titan', correct: true },
              { description: 'Ganymede', correct: false }
            ]
          }
        ]
      },
      {
        number: 2,
        questions: [
          {
            description: 'What was the name of the first telescope that detected cosmic microwave background radiation, helping to confirm the Big Bang theory?',
            scoreQuestion: 10,
            answers: [
              { description: 'Hubble', correct: false },
              { description: 'Chandra', correct: false },
              { description: 'Planck', correct: true },
              { description: 'Fermi', correct: false }
            ]
          },
          {
            description: 'What is a stellar black hole?',
            scoreQuestion: 10,
            answers: [
              { description: 'A supermassive black hole at the center of a galaxy', correct: false },
              { description: 'A black hole formed by the explosion of a supernova', correct: true },
              { description: 'A black hole generated by the merger of binary stars', correct: false },
              { description: 'A black hole created by the collision of galaxies', correct: false }
            ]
          }
        ]
      },
      {
        number: 3,
        questions: [
          {
            description: 'Which planet has the most known moons?',
            scoreQuestion: 10,
            answers: [
              { description: 'Mars', correct: false },
              { description: 'Jupiter', correct: false },
              { description: 'Saturn', correct: true },
              { description: 'Uranus', correct: false }
            ]
          },
          {
            description: 'What is a nova?',
            scoreQuestion: 10,
            answers: [
              { description: 'The explosion of a massive star', correct: false },
              { description: 'The merger of two stars', correct: false },
              { description: 'A nuclear explosion on a white dwarf star', correct: true },
              { description: 'A star that becomes a black hole', correct: false }
            ]
          }
        ]
      }
    ]
  },
  {
    name: 'Uranus',
    levels: [
      {
        number: 1,
        questions: [
          {
            description: 'What is the name of the process by which stars produce energy?',
            scoreQuestion: 10,
            answers: [
              { description: 'Nuclear fusion', correct: true },
              { description: 'Nuclear fission', correct: false },
              { description: 'Stellar combustion', correct: false },
              { description: 'Radioactive decay', correct: false }
            ]
          },
          {
            description: 'What is the name of the point in space where gravity is so strong that nothing, not even light, can escape?',
            scoreQuestion: 10,
            answers: [
              { description: 'Black hole', correct: true },
              { description: 'Pulsar', correct: false },
              { description: 'Neutron star', correct: false },
              { description: 'Quasar', correct: false }
            ]
          }
        ]
      },
      {
        number: 2,
        questions: [
          {
            description: 'What is the main composition of interstellar molecular clouds?',
            scoreQuestion: 10,
            answers: [
              { description: 'Hydrogen and helium', correct: true },
              { description: 'Oxygen and carbon', correct: false },
              { description: 'Iron and nickel', correct: false },
              { description: 'Hydrogen and oxygen', correct: false }
            ]
          },
          {
            description: 'What is a nebula?',
            scoreQuestion: 10,
            answers: [
              { description: 'A forming black hole', correct: false },
              { description: 'A cluster of young stars', correct: false },
              { description: 'A region of gas and dust in space', correct: true },
              { description: 'A colliding galaxy', correct: false }
            ]
          }
        ]
      },
      {
        number: 3,
        questions: [
          {
            description: 'What is the smallest planet in the solar system?',
            scoreQuestion: 10,
            answers: [
              { description: 'Mercury', correct: true },
              { description: 'Mars', correct: false },
              { description: 'Venus', correct: false },
              { description: 'Pluto', correct: false }
            ]
          },
          {
            description: 'Which planet has the most extreme axial tilt, rotating almost on its side?',
            scoreQuestion: 10,
            answers: [
              { description: 'Mars', correct: false },
              { description: 'Neptune', correct: false },
              { description: 'Uranus', correct: true },
              { description: 'Saturn', correct: false }
            ]
          }
        ]
      }
    ]
  },
  {
    name: 'Neptune',
    levels: [
      {
        number: 1,
        questions: [
          {
            description: 'What is the name of the moon that is the largest natural satellite of Neptune?',
            scoreQuestion: 10,
            answers: [
              { description: 'Triton', correct: true },
              { description: 'Io', correct: false },
              { description: 'Europa', correct: false },
              { description: 'Titan', correct: false }
            ]
          },
          {
            description: 'What is a neutron star?',
            scoreQuestion: 10,
            answers: [
              { description: 'A star in the final stage of its life', correct: false },
              { description: 'A type of black hole', correct: false },
              { description: 'The collapsed core of a massive star after a supernova', correct: true },
              { description: 'A star that emits regular pulses of electromagnetic radiation', correct: false }
            ]
          }
        ]
      },
      {
        number: 2,
        questions: [
          {
            description: 'What is the name of the phenomenon in which a celestial body completely blocks sunlight to Earth?',
            scoreQuestion: 10,
            answers: [
              { description: 'Solar eclipse', correct: true },
              { description: 'Lunar eclipse', correct: false },
              { description: 'Lunar phase', correct: false },
              { description: 'Solstice', correct: false }
            ]
          },
          {
            description: 'What is the name of the process by which a massive star ends its life in a cataclysmic explosion?',
            scoreQuestion: 10,
            answers: [
              { description: 'Supernova', correct: true },
              { description: 'Nova', correct: false },
              { description: 'Supernova remnant', correct: false },
              { description: 'Planetary nebula', correct: false }
            ]
          }
        ]
      },
      {
        number: 3,
        questions: [
          {
            description: 'What is the name of the process by which stars produce energy?',
            scoreQuestion: 10,
            answers: [
              { description: 'Nuclear fusion', correct: true },
              { description: 'Nuclear fission', correct: false },
              { description: 'Stellar combustion', correct: false },
              { description: 'Radioactive decay', correct: false }
            ]
          },
          {
            description: 'What is the name of the point in space where gravity is so strong that not even light can escape?',
            scoreQuestion: 10,
            answers: [
              { description: 'Black hole', correct: true },
              { description: 'Pulsar', correct: false },
              { description: 'Neutron star', correct: false },
              { description: 'Quasar', correct: false }
            ]
          }
        ]
      }
    ]
  }
]

# Create planets, levels, questions, and answers in the database
planets_data.each do |planet_data|
  planet = Planet.create(name: planet_data[:name])

  planet_data[:levels].each do |level_data|
    level = Level.create(number: level_data[:number], planet: planet)

    level_data[:questions].each do |question_data|
      question = Question.create(description: question_data[:description], scoreQuestion: question_data[:scoreQuestion], level: level)

      question_data[:answers].each do |answer_data|
        Answer.create(description: answer_data[:description], correct: answer_data[:correct], question: question)
      end
    end
  end
end
