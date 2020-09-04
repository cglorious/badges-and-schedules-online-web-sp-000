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
# attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
  attendees.each do |greeting|
    hello = batch_badge_creator(greeting)
    puts hello.first
  end
#  attendees.each do |room|
#    key = assign_rooms(room)
#    puts key.first
#  end
end

#currently returns two arrays
#what method returns values?
