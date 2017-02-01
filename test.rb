class TheresNoMethod
end
t = TheresNoMethod.new

# below we will check if the Class TheresNoMethod resonds to the first_method
puts ">>>>>>>>>>>>>>>>> " && TheresNoMethod.respond_to?(:first_method)
#false

# The result is false, cause the class TheresNoMethod is empty, and dont have any method until now.

# Now, we'll use the instance_eval method, to create a new method to the t instance of TheresNoMethod class, this will create a method in runtime and set a new method called 'first_method' to the object 't'
t.instance_eval do
  def first_method
    puts 'There is a first method here'
  end
end
# Here we check the same, but now in the instance to see the result
puts ">>>>>>>>>>>>>>>>>" && t.respond_to?(:first_method)
#true

# Now we'll introduce a new method in runtime direct in the class, without a instance, using the class_eval ruby method...

TheresNoMethod.class_eval do
  def one_more_method
    puts "There is a new method here"
  end
end

puts ">>>>>>>>>>>>>>>>> " && TheresNoMethod.respond_to?(:one_more_method)
#true

#Thats it! Simple and very cool!

