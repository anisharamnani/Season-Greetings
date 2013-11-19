  # Apple Picker

# Create a method, apple_picker, that will pick all the apples out of an array. Implement this only using each.

def apple_picker array
  new_array = []
  array.each do |fruit|
    if fruit == "apple"
      new_array << fruit
    end
  end
  new_array
end

apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]

# Challenge

# Implement it with collect and then implement it with select. Write a sentence about how select differs from collect.

