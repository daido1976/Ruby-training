module Effects
  def self.reverse
    lambda do |words|
      words.split.map(&:reverse).join(' ')
    end
  end

  def self.echo(level)
    lambda do |words|
      words.chars.map { |char| char == ' ' ? char : char * level }.join
    end
  end

  def self.loud(level)
    lambda do |words|
      words.split.map { |word| word.upcase << '!' * level }.join(' ')
    end
  end
end
