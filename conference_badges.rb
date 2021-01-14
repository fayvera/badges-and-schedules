require 'pry'
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    array_messages = []
    attendees.each {|name|array_messages << badge_maker(name)}
    array_messages
end

def assign_rooms(attendees)
    array_messages = []
    attendees.each_with_index do |name, index|
        array_messages << "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    array_messages
end

def printer(attendees)
    batch_badge_creator(attendees).each{|names| puts names}
    assign_rooms(attendees).each{|room| puts room}
end



