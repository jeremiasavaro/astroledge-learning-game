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
            scoreQuestion: 15,
            answers: [
              { description: 'Shooting star', correct: false },
              { description: 'Comet', correct: false },
              { description: 'Meteor', correct: true },
              { description: 'Asteroid', correct: false }
            ]
          },
          {
            description: 'What is the largest planet in the solar system?',
            scoreQuestion: 15,
            answers: [
              { description: 'Earth', correct: false },
              { description: 'Jupiter', correct: true },
              { description: 'Saturn', correct: false },
              { description: 'Uranus', correct: false }
            ]
          }
        ]
      },
      {
        number: 3,
        questions: [
          {
            description: 'What is the second closest planet to the Sun?',
            scoreQuestion: 20,
            answers: [
              { description: 'Earth', correct: false },
              { description: 'Mars', correct: false },
              { description: 'Venus', correct: true },
              { description: 'Mercury', correct: false }
            ]
          },
          {
            description: 'Which planet has the shortest day in the solar system?',
            scoreQuestion: 20,
            answers: [
              { description: 'Jupiter', correct: true },
              { description: 'Mars', correct: false },
              { description: 'Mercury', correct: false },
              { description: 'Venus', correct: false }
            ]
          }
        ]
      }
    ],
    levelsYear: [
      {
        number: 1,
        questionsYear: [
          {
            description: 'In which year was the Hubble Space Telescope launched?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1990', correct: true },
            ]
          },
          {
            description: 'In which year was the planet Pluto discovered?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1930', correct: true },
            ]
          },
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
            scoreQuestion: 15,
            answers: [
              { description: 'Spiral galaxy', correct: false },
              { description: 'Irregular galaxy', correct: false },
              { description: 'Elliptical galaxy', correct: true },
              { description: 'Dwarf galaxy', correct: false }
            ]
          },
          {
            description: 'What is the name of the phenomenon in which two stars orbit around a common center of mass?',
            scoreQuestion: 15,
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
            description: 'What is the name of the process by which a massive star collapses under its own gravity at the end of its life cycle?',
            scoreQuestion: 20,
            answers: [
              { description: 'Supernova', correct: true },
              { description: 'Nova', correct: false },
              { description: 'Supernova remnant', correct: false },
              { description: 'Planetary nebula', correct: false }
            ]
          },
          {
            description: 'Which planet is known as the Earth\'s twin due to its size and composition?',
            scoreQuestion: 20,
            answers: [
              { description: 'Venus', correct: true },
              { description: 'Mars', correct: false },
              { description: 'Jupiter', correct: false },
              { description: 'Saturn', correct: false }
            ]
          }
        ]
      }
    ],
    levelsYear: [
      {
        number: 1,
        questionsYear: [
          {
            description: 'In what year was the first manned lunar landing on the surface of the moon?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1969', correct: true },
            ]
          },
          {
            description: 'In which year was the planet Neptune discovered?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1846', correct: true },
            ]
          },
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
            scoreQuestion: 10,
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
            scoreQuestion: 15,
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
            scoreQuestion: 20,
            answers: [
              { description: 'Kuiper Belt', correct: false },
              { description: 'Van Allen Belt', correct: false },
              { description: 'Asteroid Belt', correct: true },
              { description: 'Ring of Saturn', correct: false }
            ]
          },
          {
            description: 'What phenomenon occurs when Earth passes between the Sun and the Moon, casting a shadow on the Moon?',
            scoreQuestion: 20,
            answers: [
              { description: 'Solar eclipse', correct: false },
              { description: 'Lunar eclipse', correct: true },
              { description: 'Lunar phase', correct: false },
              { description: 'Solstice', correct: false }
            ]
          }
        ]
      }
    ],
    levelsYear: [
      {
        number: 1,
        questionsYear: [
          {
            description: 'In which year was the first space probe, Sputnik 1, launched?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1957', correct: true },
            ]
          },
          {
            description: 'In which year was the asteroid belt between Mars and Jupiter discovered?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1801', correct: true },
            ]
          },
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
            scoreQuestion: 15,
            answers: [
              { description: 'The explosion of a massive star at the end of its life', correct: false },
              { description: 'The merger of two stars in a binary system', correct: false },
              { description: 'The explosion of a white dwarf that reaches a critical mass', correct: true },
              { description: 'The fusion of two black holes', correct: false }
            ]
          },
          {
            description: 'What type of galaxy has a spiral shape with curved arms and contains a large amount of gas and dust?',
            scoreQuestion: 15,
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
            scoreQuestion: 20,
            answers: [
              { description: 'Opportunity', correct: false },
              { description: 'Spirit', correct: false },
              { description: 'Curiosity', correct: true },
              { description: 'Perseverance', correct: false }
            ]
          },
          {
            description: 'What is the name of the supermassive black hole at the center of our galaxy?',
            scoreQuestion: 20,
            answers: [
              { description: 'Andromeda', correct: false },
              { description: 'Sagittarius A*', correct: true },
              { description: 'Milky Way', correct: false },
              { description: 'Cygnus X-1', correct: false }
            ]
          }
        ]
      }
    ],
    levelsYear: [
      {
        number: 1,
        questionsYear: [
          {
            description: 'In which year was the first exoplanet orbiting a Sun-like star discovered?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1995', correct: true },
            ]
          },
          {
            description: 'In which year was Supernova 1987A first observed in the Large Magellanic Cloud?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1987', correct: true },
            ]
          },
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
            scoreQuestion: 15,
            answers: [
              { description: 'Kepler-186f', correct: false },
              { description: 'Proxima Centauri b', correct: false },
              { description: 'Trappist-1e', correct: false },
              { description: '51 Pegasi b', correct: true }
            ]
          },
          {
            description: 'What type of star is the Sun?',
            scoreQuestion: 15,
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
            scoreQuestion: 20,
            answers: [
              { description: 'Saturn', correct: false },
              { description: 'Uranus', correct: true },
              { description: 'Neptune', correct: false },
              { description: 'Pluto', correct: false }
            ]
          },
          {
            description: 'What are the Van Allen belts?',
            scoreQuestion: 20,
            answers: [
              { description: 'Zones of high radiation around Jupiter', correct: false },
              { description: 'Asteroid belts around the Sun', correct: false },
              { description: 'Zones of high radiation around the Earth', correct: true },
              { description: 'Rings of Saturn', correct: false }
            ]
          }
        ]
      }
    ],
    levelsYear: [
      {
        number: 1,
        questionsYear: [
          {
            description: 'In what year was NASA established?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1965', correct: true },
            ]
          },
          {
            description: 'In what year was the first flight of the Vostok 1 rocket, the first manned space flight, with Yuri Gagarin?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1961', correct: true },
            ]
          },
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
            scoreQuestion: 15,
            answers: [
              { description: 'Hubble', correct: false },
              { description: 'Chandra', correct: false },
              { description: 'Planck', correct: true },
              { description: 'Fermi', correct: false }
            ]
          },
          {
            description: 'What is a stellar black hole?',
            scoreQuestion: 15,
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
            scoreQuestion: 20,
            answers: [
              { description: 'Mars', correct: false },
              { description: 'Jupiter', correct: false },
              { description: 'Saturn', correct: true },
              { description: 'Uranus', correct: false }
            ]
          },
          {
            description: 'What is a nova?',
            scoreQuestion: 20,
            answers: [
              { description: 'The explosion of a massive star', correct: false },
              { description: 'The merger of two stars', correct: false },
              { description: 'A nuclear explosion on a white dwarf star', correct: true },
              { description: 'A star that becomes a black hole', correct: false }
            ]
          }
        ]
      }
    ],
    levelYear: [
      {
        number: 1,
        questionsYear: [
          {
            description: 'In which year was the pulsar discovered in the first observation of a neutron star?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1967', correct: true },
            ]
          },
          {
            description: 'In which year was the first landing of a probe on the surface of Mars?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1976', correct: true },
            ]
          },
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
            scoreQuestion: 15,
            answers: [
              { description: 'Hydrogen and helium', correct: true },
              { description: 'Oxygen and carbon', correct: false },
              { description: 'Iron and nickel', correct: false },
              { description: 'Hydrogen and oxygen', correct: false }
            ]
          },
          {
            description: 'What is a nebula?',
            scoreQuestion: 15,
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
            scoreQuestion: 20,
            answers: [
              { description: 'Mercury', correct: true },
              { description: 'Mars', correct: false },
              { description: 'Venus', correct: false },
              { description: 'Pluto', correct: false }
            ]
          },
          {
            description: 'Which planet has the most extreme axial tilt, rotating almost on its side?',
            scoreQuestion: 20,
            answers: [
              { description: 'Mars', correct: false },
              { description: 'Neptune', correct: false },
              { description: 'Uranus', correct: true },
              { description: 'Saturn', correct: false }
            ]
          }
        ]
      }
    ],
    levelYear: [
      {
        number: 1,
        questionsYear: [
          {
            description: 'In what year was Apollo 11, the first mission to land humans on the moon, launched?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1969', correct: true },
            ]
          },
          {
            description: 'In which year was the microwave background radiation, evidence of the Big Bang, first detected?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1965', correct: true },
            ]
          },
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
            scoreQuestion: 15,
            answers: [
              { description: 'Solar eclipse', correct: true },
              { description: 'Lunar eclipse', correct: false },
              { description: 'Lunar phase', correct: false },
              { description: 'Solstice', correct: false }
            ]
          },
          {
            description: 'What is the name of the process by which a massive star ends its life in a cataclysmic explosion?',
            scoreQuestion: 15,
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
            scoreQuestion: 20,
            answers: [
              { description: 'Nuclear fusion', correct: true },
              { description: 'Nuclear fission', correct: false },
              { description: 'Stellar combustion', correct: false },
              { description: 'Radioactive decay', correct: false }
            ]
          },
          {
            description: 'What is the name of the point in space where gravity is so strong that not even light can escape?',
            scoreQuestion: 20,
            answers: [
              { description: 'Black hole', correct: true },
              { description: 'Pulsar', correct: false },
              { description: 'Neutron star', correct: false },
              { description: 'Quasar', correct: false }
            ]
          }
        ]
      }
    ],
    levelYear: [
      {
        number: 1,
        questionsYear: [
          {
            description: 'In what year was the first manned lunar landing on the surface of the moon?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1969', correct: true },
            ]
          },
          {
            description: 'In which year was the planet Neptune discovered?',
            scoreQuestion: 50,
            answerYear: [
              { description: '1846', correct: true },
            ]
          },
        ]
      }
    ]
  }
]

time_trial_data = [
  {
    questions: [
      {
        description: 'What is the name of the process by which stars produce energy?',
        scoreQuestion: 15,
        answers: [
          { description: 'Nuclear fusion', correct: true },
          { description: 'Nuclear fission', correct: false },
          { description: 'Stellar combustion', correct: false },
          { description: 'Radioactive decay', correct: false }
        ]
      },
      {
        description: 'Which planet in our solar system is known for its prominent ring system?',
        scoreQuestion: 15,
        answers: [
          { description: 'Saturn', correct: true },
          { description: 'Jupiter', correct: false },
          { description: 'Uranus', correct: false },
          { description: 'Neptune', correct: false }
        ]
      },
      {
        description: 'What is the largest planet in our solar system?',
        scoreQuestion: 15,
        answers: [
          { description: 'Jupiter', correct: true },
          { description: 'Saturn', correct: false },
          { description: 'Neptune', correct: false },
          { description: 'Earth', correct: false }
        ]
      },
      {
        description: 'What type of galaxy is the Milky Way?',
        scoreQuestion: 15,
        answers: [
          { description: 'Spiral', correct: true },
          { description: 'Elliptical', correct: false },
          { description: 'Irregular', correct: false },
          { description: 'Lenticular', correct: false }
        ]
      },
      {
        description: 'Which planet is closest to the Sun?',
        scoreQuestion: 15,
        answers: [
          { description: 'Mercury', correct: true },
          { description: 'Venus', correct: false },
          { description: 'Earth', correct: false },
          { description: 'Mars', correct: false }
        ]
      },
      {
        description: 'What is the most common type of star in the universe?',
        scoreQuestion: 15,
        answers: [
          { description: 'Red dwarf', correct: true },
          { description: 'Yellow dwarf', correct: false },
          { description: 'Blue giant', correct: false },
          { description: 'White dwarf', correct: false }
        ]
      },
      {
        description: 'Which planet is known as the "Red Planet"?',
        scoreQuestion: 15,
        answers: [
          { description: 'Mars', correct: true },
          { description: 'Venus', correct: false },
          { description: 'Jupiter', correct: false },
          { description: 'Saturn', correct: false }
        ]
      },
      {
        description: 'What is the name of the first artificial satellite sent into space?',
        scoreQuestion: 15,
        answers: [
          { description: 'Sputnik 1', correct: true },
          { description: 'Explorer 1', correct: false },
          { description: 'Apollo 11', correct: false },
          { description: 'Voyager 1', correct: false }
        ]
      },
      {
        description: 'Which planet has the most moons?',
        scoreQuestion: 15,
        answers: [
          { description: 'Jupiter', correct: true },
          { description: 'Saturn', correct: false },
          { description: 'Uranus', correct: false },
          { description: 'Neptune', correct: false }
        ]
      },
      {
        description: 'What is the name of the closest star to Earth, after the Sun?',
        scoreQuestion: 15,
        answers: [
          { description: 'Proxima Centauri', correct: true },
          { description: 'Alpha Centauri', correct: false },
          { description: 'Sirius', correct: false },
          { description: 'Betelgeuse', correct: false }
        ]
      },
      {
        description: 'What is the term for a star that suddenly increases greatly in brightness because of a catastrophic explosion?',
        scoreQuestion: 15,
        answers: [
          { description: 'Supernova', correct: true },
          { description: 'Nova', correct: false },
          { description: 'Pulsar', correct: false },
          { description: 'Quasar', correct: false }
        ]
      },
      {
        description: 'Which planet has a day that is longer than its year?',
        scoreQuestion: 15,
        answers: [
          { description: 'Venus', correct: true },
          { description: 'Mercury', correct: false },
          { description: 'Mars', correct: false },
          { description: 'Jupiter', correct: false }
        ]
      },
      {
        description: 'What is the most abundant element in the universe?',
        scoreQuestion: 15,
        answers: [
          { description: 'Hydrogen', correct: true },
          { description: 'Helium', correct: false },
          { description: 'Oxygen', correct: false },
          { description: 'Carbon', correct: false }
        ]
      },
      {
        description: 'What do we call the boundary around a black hole beyond which no light or other radiation can escape?',
        scoreQuestion: 15,
        answers: [
          { description: 'Event horizon', correct: true },
          { description: 'Singularity', correct: false },
          { description: 'Accretion disk', correct: false },
          { description: 'Schwarzschild radius', correct: false }
        ]
      },
      {
        description: 'What is the brightest star in the night sky?',
        scoreQuestion: 15,
        answers: [
          { description: 'Sirius', correct: true },
          { description: 'Betelgeuse', correct: false },
          { description: 'Rigel', correct: false },
          { description: 'Polaris', correct: false }
        ]
      },
      {
        description: 'What is the name of the galaxy that is on a collision course with the Milky Way?',
        scoreQuestion: 15,
        answers: [
          { description: 'Andromeda', correct: true },
          { description: 'Triangulum', correct: false },
          { description: 'Magellanic Clouds', correct: false },
          { description: 'Whirlpool', correct: false }
        ]
      },
      {
        description: 'Which planet has the highest mountain in the solar system?',
        scoreQuestion: 15,
        answers: [
          { description: 'Mars', correct: true },
          { description: 'Earth', correct: false },
          { description: 'Venus', correct: false },
          { description: 'Mercury', correct: false }
        ]
      },
      {
        description: 'What is the term for the apparent shift in position of an object due to the change in the observer\'s point of view?',
        scoreQuestion: 15,
        answers: [
          { description: 'Parallax', correct: true },
          { description: 'Redshift', correct: false },
          { description: 'Doppler effect', correct: false },
          { description: 'Aberration', correct: false }
        ]
      },
      {
        description: 'Which planet has the Great Red Spot, a giant storm?',
        scoreQuestion: 15,
        answers: [
          { description: 'Jupiter', correct: true },
          { description: 'Saturn', correct: false },
          { description: 'Neptune', correct: false },
          { description: 'Uranus', correct: false }
        ]
      },
      {
        description: 'Which planet has a tilt of about 98 degrees, causing it to rotate on its side?',
        scoreQuestion: 15,
        answers: [
          { description: 'Uranus', correct: true },
          { description: 'Neptune', correct: false },
          { description: 'Saturn', correct: false },
          { description: 'Mars', correct: false }
        ]
      },
      {
        description: 'What is the phenomenon called when one celestial body passes in front of another, blocking its light?',
        scoreQuestion: 15,
        answers: [
          { description: 'Eclipse', correct: true },
          { description: 'Occultation', correct: false },
          { description: 'Transit', correct: false },
          { description: 'Conjunction', correct: false }
        ]
      },
      {
        description: 'What do astronomers call the remnant of a star that has collapsed under its own gravity to the point where its escape velocity exceeds the speed of light?',
        scoreQuestion: 15,
        answers: [
          { description: 'Black hole', correct: true },
          { description: 'Neutron star', correct: false },
          { description: 'White dwarf', correct: false },
          { description: 'Quasar', correct: false }
        ]
      },
      {
        description: 'Which planet has the most extreme temperature variations between day and night?',
        scoreQuestion: 15,
        answers: [
          { description: 'Mercury', correct: true },
          { description: 'Venus', correct: false },
          { description: 'Mars', correct: false },
          { description: 'Earth', correct: false }
        ]
      },
      {
        description: 'What is the name of the dwarf planet located in the asteroid belt between Mars and Jupiter?',
        scoreQuestion: 15,
        answers: [
          { description: 'Ceres', correct: true },
          { description: 'Pluto', correct: false },
          { description: 'Eris', correct: false },
          { description: 'Haumea', correct: false }
        ]
      },
      {
        description: 'Which constellation is home to the stars Castor and Pollux?',
        scoreQuestion: 15,
        answers: [
          { description: 'Gemini', correct: true },
          { description: 'Orion', correct: false },
          { description: 'Taurus', correct: false },
          { description: 'Leo', correct: false }
        ]
      },
      {
        description: 'What is the approximate age of the universe according to the Big Bang theory?',
        scoreQuestion: 15,
        answers: [
          { description: '13.8 billion years', correct: true },
          { description: '4.6 billion years', correct: false },
          { description: '100 million years', correct: false },
          { description: '10 billion years', correct: false }
        ]
      },
      {
        description: 'Which planet is often referred to as Earth\'s "sister planet" due to its similar size and mass?',
        scoreQuestion: 15,
        answers: [
          { description: 'Venus', correct: true },
          { description: 'Mars', correct: false },
          { description: 'Mercury', correct: false },
          { description: 'Neptune', correct: false }
        ]
      },
      {
        description: 'Which object is responsible for the tides on Earth?',
        scoreQuestion: 15,
        answers: [
          { description: 'The Moon', correct: true },
          { description: 'The Sun', correct: false },
          { description: 'Jupiter', correct: false },
          { description: 'Saturn', correct: false }
        ]
      },
      {
        description: 'Which planet is the hottest in our solar system due to its thick atmosphere of carbon dioxide?',
        scoreQuestion: 15,
        answers: [
          { description: 'Venus', correct: true },
          { description: 'Mercury', correct: false },
          { description: 'Earth', correct: false },
          { description: 'Mars', correct: false }
        ]
      },
      {
        description: 'What is the term for a small body of rock or metal that enters Earth\'s atmosphere and burns up, creating a streak of light?',
        scoreQuestion: 15,
        answers: [
          { description: 'Meteor', correct: true },
          { description: 'Asteroid', correct: false },
          { description: 'Comet', correct: false },
          { description: 'Meteorite', correct: false }
        ]
      },
      {
        description: 'What is the name of the space telescope launched in 1990 that has provided some of the most detailed images of the universe?',
        scoreQuestion: 15,
        answers: [
          { description: 'Hubble Space Telescope', correct: true },
          { description: 'James Webb Space Telescope', correct: false },
          { description: 'Kepler Space Telescope', correct: false },
          { description: 'Chandra X-ray Observatory', correct: false }
        ]
      },
      {
        description: 'What is the most distant man-made object from Earth?',
        scoreQuestion: 15,
        answers: [
          { description: 'Voyager 1', correct: true },
          { description: 'Voyager 2', correct: false },
          { description: 'Pioneer 10', correct: false },
          { description: 'New Horizons', correct: false }
        ]
      },
      {
        description: 'What is the closest galaxy to the Milky Way?',
        scoreQuestion: 15,
        answers: [
          { description: 'Andromeda', correct: true },
          { description: 'Triangulum', correct: false },
          { description: 'Large Magellanic Cloud', correct: false },
          { description: 'Small Magellanic Cloud', correct: false }
        ]
      },
      {
        description: 'What do we call the outermost layer of the Sun\'s atmosphere, visible during a total solar eclipse?',
        scoreQuestion: 15,
        answers: [
          { description: 'Corona', correct: true },
          { description: 'Chromosphere', correct: false },
          { description: 'Photosphere', correct: false },
          { description: 'Convective zone', correct: false }
        ]
      }
    ]
  }
];


planets_data.each do |planet_data|
  # Busca o crea el planeta por nombre
  planet = Planet.find_or_create_by(name: planet_data[:name])

  planet_data[:levels].each do |level_data|
    # Busca o crea el nivel por número y planeta
    level = Level.find_or_create_by(number: level_data[:number], planet: planet)

    level_data[:questions].each do |question_data|
      # Busca o crea la pregunta por descripción y nivel
      question = Question.find_or_create_by(description: question_data[:description], scoreQuestion: question_data[:scoreQuestion], level: level)

      question_data[:answers].each do |answer_data|
        # Busca o crea la respuesta por descripción y pregunta
        Answer.find_or_create_by(description: answer_data[:description], correct: answer_data[:correct], question: question)
      end
    end
  end

  planet_data[:levelYear] do |levelYear_data|
    # Busca o crea el nivel por número y planeta
    levelYear = LevelYear.find_or_create_by(number: levelYear_data[:number], planet: planet)

    levelYear_data[:questionsYear].each do |questionYear_data|
      # Busca o crea la pregunta por descripción y nivel
      questionYear = QuestionYear.find_or_create_by(description: questionYear_data[:description], scoreQuestion: questionYear_data[:scoreQuestion], levelYear: levelYear)

      questionYear_data[:answersYear].each do |answerYear_data|
        # Busca o crea la respuesta por descripción y pregunta
        AnswerYear.find_or_create_by(description: answerYear_data[:description], correct: answerYear_data[:correct], questionYear: questionYear)
      end
    end
  end
end
