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

def input
  puts '数字を入力してください'
  number = gets.to_i
  while number < 1
    puts '1以上の数字を入力してください'
    number = gets.to_i
  end
  number
end

fizz_buzz(input)
