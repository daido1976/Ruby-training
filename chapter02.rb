def judge_number(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
end

def fizz_buzz(num)
  puts judge_number(num)
end

input = gets.to_i
fizz_buzz(input)
