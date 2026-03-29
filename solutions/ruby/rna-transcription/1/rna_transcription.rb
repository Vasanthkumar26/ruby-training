=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement
  Complement::COMPLEMENT = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}

  def self.of_dna (dna_value)
    result = ''
    dna_value.each_char do |dna|
      result = result + COMPLEMENT[dna]
    end
    result
  end
end