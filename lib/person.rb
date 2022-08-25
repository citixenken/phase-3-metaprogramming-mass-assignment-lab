class Person
  def initialize(args)
    # args.each_key do |k, v| 
    #   self.class.attr_accessor(k)
    #   self.send("#{k}=", args[k])
    # end

    args.each do |k, v| 
      self.class.attr_accessor(k)
      self.send("#{k}=", v)
    end
  end
end

# confirming output
#==================
# bob_attributes = { name: "Bob", hair_color: "Brown" }

# bob = Person.new(bob_attributes)
# puts bob.name       # => "Bob"
# puts bob.hair_color # => "Brown"

# susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

# susan = Person.new(susan_attributes)
# puts susan.name      # => "Susan"
# puts susan.height    # => "5'11""
# puts susan.eye_color # => "Green"