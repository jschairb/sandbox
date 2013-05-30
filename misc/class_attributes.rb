class MyClass
  class << self
    attr_accessor :my_attribute
  end
end

MyClass.my_attribute = "foo!"

puts MyClass.my_attribute


