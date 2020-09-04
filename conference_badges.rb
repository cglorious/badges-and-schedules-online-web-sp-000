def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  speakers.collect do |name_array|
    "Hello, my name is #{name_array}."
  end
end

#output - array of badges

def assign_rooms(assign_array)
  new_assign_array = []
  assign_array.each_with_index do |name, room|
    number = room + 1
    greeting = "Hello, #{name}! You'll be assigned to room #{number}!"
    new_assign_array << greeting
  end
  new_assign_array
end

#array of room assignments

def printer(attendees)
  badges_array = batch_badge_creator(attendees)
  #make an array of badges that we iterate over
  room_array = assign_rooms(attendees)
  room_array.map do

  attendees.map do |greeting| #map returns new array, greeting is each element
    greeting_array = batch_badge_creator(greeting) #input array
    puts greeting_array.first #output first element in array
  end
  attendees.map do |room|
    room_array = assign_rooms(room)
    puts room_array.first
  end
end

# attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

#currently returns two arrays
#what method returns values?
