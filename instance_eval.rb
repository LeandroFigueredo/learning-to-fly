class Hello
end

Hello.instance_eval do
  def say_hi
    puts "Hiiii from instance"
  end
end

Hello.say_hi

p = Hello.new

p.instance_eval do
  def say_hi
    puts "Hello From instance"
  end
end

p.say_hi