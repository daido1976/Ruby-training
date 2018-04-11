def to_hex(red, green, blue)
  [red, green, blue].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  red, green, blue = hex[1..2], hex[3..4], hex[5..6]
  [red, green, blue].map { |s| s.hex }
end
