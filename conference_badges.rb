def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  speakers.map do |name_array|
    "Hello, my name is #{name_array}."
  end
end

def assign_rooms(assign_array)
  new_assign_array = []
  assign_array.each_with_index do |name, room|
    number = room + 1
    greeting = "Hello, #{name}! You'll be assigned to room #{number}!"
    new_assign_array << greeting
  end
  new_assign_array
end

def printer(attendees) ["a", "b"]
  attendees.each do |greeting|
    batch_badge_creator(greeting)
    assign_rooms(greeting) 
  end
end

#currently returns two arrays
#what method returns values?
