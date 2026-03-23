=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def self.abbreviate(text)
    hyphen_removed = text.gsub("-", " ")
    input = hyphen_removed.gsub("_", "")
    array = input.split(" ")
    output = ""
    for inp in array
      output += inp[0].upcase
    end
    return output
  end
end