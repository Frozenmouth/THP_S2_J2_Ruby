# frozen_string_literal: true

def multiple_of_3_or_5(num)
  if (num % 3).zero? || (num % 5).zero?
    return true
  end
  false
end

def sum_of_3_and_5_multiples(num)
  i = 0
  sum = 0
  if num.class == String || num.class == Float || num <= 0
    return "Seuls les entiers naturels sont acceptés."
  end
  while i < num
    if multiple_of_3_or_5(i) == true
      sum += i
    end
    i += 1
  end
  sum
end
