class RegexpChecker
  def check_regexp
    text = input_text
    regexp = input_regexp
    matches = text.scan(regexp)
    if matches.size > 0
      puts "Matched: #{matches.join(', ')}"
    else
      puts 'Nothing matched.'
    end
  end

  private

  def input_regexp
    print 'Pattern?: '
    pattern = gets.chomp
    return input_regexp if pattern.empty?
    Regexp.new(pattern)
  rescue RegexpError => e
    puts "Invalid patttern: #{e.message}"
    retry
  end

  def input_text
    print 'Text?: '
    text = gets.chomp
    return input_text if text.empty?
    text
  end
end
