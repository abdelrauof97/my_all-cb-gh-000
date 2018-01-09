require 'pry'

def my_all?(collection)
  i = 0 
  while i < collection.length 
    yield(collection[i])
    i += 1
  end
end
numbers = [1,2,3]
binding.pry
my_all(numbers) { |x| x < 2 }
#ruby lib/my_all.rb