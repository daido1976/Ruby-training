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

def fizz_buzz(answer)
  puts answer
end

puts '数字を入力してください'
num = gets.to_i
fizz_buzz(judge_number(num))
