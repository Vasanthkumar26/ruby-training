=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(num)
    result = ""
    if (num % 3 == 0)
      result += "Pling"
    end
    if (num % 5 == 0)
      result += "Plang"
    end
    if (num % 7 == 0)
      result += "Plong"
    end
      
    return num.to_s if (result == "")
    return result
  end
end