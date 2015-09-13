#! /usr/bin/ruby

[1,2,3].each{|i| puts i}

{ key: "value", other: "stuff", even: "more"}.each do |k,v|
     puts "(#{k.to_s}, #{v})"
     puts " reversed to (#{k.to_s.reverse}, #{v.reverse})"
end 


def double_before_iterating(array, &block) 
   array.each{ |i| yield i*2 }
end

double_before_iterating([1,2,3]) { |x| puts x }


class Array
    def each_double(&block)
        each { |i| yield i*2 }
        end
end


[4,5,6].each_double{ |i| puts i}
