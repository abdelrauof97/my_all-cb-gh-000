require 'pry'

def my_all?(collection)
  i = 0 
  while i < collection.length 
    yield(collection[i])
    i += 1
  end
end
numbers = [1,2,3]
my_all(numbers) { |x|
  x < 2
}