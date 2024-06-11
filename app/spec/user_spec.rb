RSpec.describe User do
  it "is valid with a username, password and score" do
    user = User.new(username: "user", password: "pass")
    expect(user).to have_username?
    expect(user).to have_password?
  end

  it 'should see the correct answer' do
    user = User.new(see_correct: true)
    expect(user).to see_the_correct?
  end
  it 'should not see the correct answer' do
    user = User.new(see_correct: false)
    expect(user).to not (see_the_correct?)
  end

end