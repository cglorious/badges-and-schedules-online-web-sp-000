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

def printer(attendees)
  attendees.each do |greeting|
    batch_badge_creator(greeting)
    assign_rooms(greeting)

  end
  speaker_array.each do |name_and_room|
    room = assign_rooms(name_and_room)
    puts room[0]
  end
end

#currently returns two arrays
#what method returns values?
