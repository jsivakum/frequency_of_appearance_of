require('rspec')
require('pry')
require('frequency_of_appearance_of')

describe ('String#frequency_of_appearance_of') do
  it("takes a string of words and returns 1 if the argument word exists within the string") do
    expect(("Hello World").frequency_of_appearance_of("Hello")).to(eq(1))
  end

  it("takes a string of words and returns the number of times that the argument word was repeated within the string sentence") do
    expect(("Hello World Hello").frequency_of_appearance_of("Hello")).to(eq(2))
  end

  it("takes a string of words and returns the number of times that the argument word was repeated within the string sentence") do
    expect(("Hello World Hello.").frequency_of_appearance_of("Hello")).to(eq(2))
  end
end
