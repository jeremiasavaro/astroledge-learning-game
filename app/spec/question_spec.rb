RSpec.describe Question do
  it 'should have 4 answers' do
    answers = [
      { description: 'a1', correct: false },
      { description: 'a2', correct: false },
      { description: 'a3', correct: true },
      { description: 'a4', correct: false }
    ]
    question = Question.new(answers: answers.map { |attrs| Answer.new(attrs) })
    expect(question).to have_4_options
  end

  it 'should not have 4 answers' do
    question = Question.new(answers: [])
    expect(question).to not (have_4_options)
  end
end
