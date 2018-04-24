def fizz_buzz
  puts judge_number
end

def judge_number
  num = input
  if (num % 15).zero?
    'Fizz Buzz'
  elsif (num % 3).zero?
    'Fizz'
  elsif (num % 5).zero?
    'Buzz'
  else
    num.to_s
  end
end

def input
  puts '1以上の数字を入力してください'
  input_str = gets
  input_num = input_str.to_i
  return input if input_str == '' || input_num <= 0
  input_num
end

fizz_buzz
