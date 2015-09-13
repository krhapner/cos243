#! /usr/bin/ruby

class Constructable
     def initialize(value) 
          @variable = value
     end
     def report
 	puts @variable
     end
     def variable 
         @variable
     end
     def variable=(new_value)
        @variable = new_value
     end
end

c = Constructable.new("krista!")
d = Constructable.new(42)
c.variable = 7
puts c.variable

class Nice
    attr_accessor :variable
    def initialize(value)
       @variable = value
    end
end

n = Nice.new("krista")
#n.variable = "hi"
puts n.variable

class String
     def palindrome?
        self == reverse
     end
end

puts "hello".palindrome?
puts "abba".palindrome?
