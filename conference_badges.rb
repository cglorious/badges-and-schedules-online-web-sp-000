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

def printer(attendees)
  badges_array = batch_badge_creator(attendees)
  badges_array.each do |greeting|
    puts greeting
  end

  room_array = assign_rooms(attendees)
  room_array.each do |room|
    puts room
  end
end
