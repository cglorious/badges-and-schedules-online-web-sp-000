def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  speakers.collect do |name_array|
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
  attendees.map do |greeting|
    greeting_array = batch_badge_creator(greeting)
    puts greeting_array.first
  end
  attendees.map do |room|
    room_array = assign_rooms(room)
    puts room_array.first
  end
end

# attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

#currently returns two arrays
#what method returns values?
