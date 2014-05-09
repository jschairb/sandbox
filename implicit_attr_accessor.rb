#!/usr/bin/env ruby

class AttrdObject
  def method_missing(name, *args)
    if /\w+=/.match(name)
      self.class.send(:attr_accessor, name.to_s.gsub('=', ''))
      send(name, *args)
    else
      super
    end
  end
end

attrd_object = AttrdObject.new

attrd_object.foo # NoMethodError

attrd_object.foo = "bar" # bar

attrd_object.foo # bar
