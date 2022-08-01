# Write your code here.
def badge_maker (name)
    "Hello, my name is #{name}."
end

def batch_badge_creator (attendees)
    attendees.map {|name| badge_maker (name)}
end

def assign_rooms (attendees)
    attendees.map.with_index(1) {|name,index| "Hello, #{name}! You'll be assigned to room #{index}!"}
end

def printer (attendees)
    badges_and_room_assignments = batch_badge_creator(attendees)
    badges_and_room_assignments += assign_rooms(attendees)
    badges_and_room_assignments.each {|b| puts b}
end