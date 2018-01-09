require 'pry'

def my_all?(collection)
  i = 0 
  block_return_values = []
  while i < collection.length 
    block_return_values << yield(collection[i])
    i += 1
  end
  block_return_values.include
end
numbers = [1,2,3]
binding.pry
my_all?(numbers) { |x| x < 2 }

#ruby lib/my_all.rb