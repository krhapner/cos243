#! /usr/bin/ruby

class Histogram
     def initialize (inputArray)
        @inArray = inputArray
        @countHash = Hash.new
        @inArray.each do |i|
            if @countHash.has_key?(i)
               @countHash[i] +=1
            else
               @countHash[i] = 1
            end
        end
     end
 
     def display(top = 0)
     @top = top
     @spaces = Hash.new
     @countHash1 = Hash.new
     @countHash =  @countHash.sort_by {|k,v| v}.reverse
     if @top !=0
        (0..(@top - 1)).each do |n|
         @countHash1[@countHash[n][0]] = @countHash[n][1]
         end
     else 
        @countHash1 = @countHash
     end
     @countHash1 = @countHash1.sort_by {|k,v| v}.reverse
     @longLength1 = 0
     @countHash1.each{|key,value|
         if key.length > @longLength1
            @longLength1 = key.length
         end
     } 
     @longLength1+=1
     @countHash1.each{|key,value| @spaces[key] = [@longLength1 - key.length,0] }

     @highestVal = (@countHash1[0][1]).to_f
     @spaceLeft = 80 - (@longLength1 + 1)
     @countHash1.each{|key, value|
         @cal = @highestVal/value
         @cal = @spaceLeft/@cal
         @numStars = (@cal + 0.5).to_i
         @spaces[key][1] = @numStars
     }
     @spaces.each{|key,value| puts key + (" " * value[0]) + "|" + ("*" * value[1])}
     return nil 
     end
end



# h = Histogram.new([1,2,3,3,2,2,2,2,2,7])
#h=Histogram.new ['a', 'b', 'c', 'b', 'b', 'a']
#h.display
#t = Histogram.new(["krista", "krista", "animals", "are", "animals","krista","cat","cat", "dog", "dog","krista", "cat"])
#t.display


#o = Histogram.new ['a', 'b', 'c', 'b', 'b', 'a', 'longest', 'd', 'd', 'a', 'b', 'c', 'd', 'e', 'e', 'a', 'b', 'e', 'd']
#o.display
#puts
#o.display(5)


test = Histogram.new(["5","h","cat", "car","car","car", "corvette","corvette","25", "25","25","25","25","25","25","poop"])

test.display


array = []
500.times { array << 'c' }
100.times { array << 'a' }
5.times { array << 'b' }
h = Histogram.new array
#h.display

class Array 
    def frequency
       @countHash1 = Hash.new
       self.each do |i|
            if @countHash1.has_key?(i)
               @countHash1[i] +=1
            else
               @countHash1[i] = 1
            end 
       end
     return @countHash1
    end
end


 puts ["krista","krista","cat","cat","cat"].frequency






