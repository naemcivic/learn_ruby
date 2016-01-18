def add(num1,num2)
  num1 + num2
  # if num1 == 0 && num2 == 0
    # 0
  # elsif  num1 == 2 && num2 == 2
    # 0
  # end
end


def subtract(num1,num2)
  num1 - num2
  # num1 == 10 && num2 == 4
  #   6
end

def sum(array)
    if array.empty?
      0
    else
    array.reduce(:+)
  end
end
