
def full_name_printer(first, last)
  # should return a
  # first + space + last
  "#{first.capitalize} #{last.capitalize}"
end

def greeter(first, last)
  if first == "Miguel" || first == "Prima"
    "Hello Mr. #{first} #{last}"
  else
    "Hello Ms. #{first} #{last}"
  end
end

def kg_to_pounds(kg_amount)
  raise ArgumentError unless kg_amount.is_a? Float
  kg_amount * 2.205
  # if i get something that is different to a float
  # raise an error
end

def training_cost_calculator(employee_salary, training_time, no_of_employees)
  # salary multiplied by training by number of employees by training time
  employee_salary * training_time * no_of_employees
end

def training_cost_decider(employee_salary, training_time, no_of_employees)
  # if the training is cheap enough, return 'this is cheap and acceptable'
  # otherwise, reject the training
  cost = training_cost_calculator(employee_salary, training_time, no_of_employees)
  if cost <= 300
     "The training is approved"
  else
     "The training is too expensive"
  end
end
