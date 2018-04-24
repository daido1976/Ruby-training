def to_hex(red, green, blue)
  [red, green, blue].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  red = hex[1..2]
  green = hex[3..4]
  blue = hex[5..6]
  [red, green, blue].map(&:hex)
end
