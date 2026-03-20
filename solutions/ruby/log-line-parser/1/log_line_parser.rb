class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    splitted_array = @line.split("]: ")
    splitted_array[1].strip
  end

  def log_level
    open_bracket_index = @line.index("[")
    closed_bracket_index = @line.index("]")
    log_message = @line.slice(open_bracket_index + 1, closed_bracket_index - 1)
    log_message.downcase
  end
  
  def reformat
    "#{message} (#{log_level})"
  end
end
