#!/usr/bin/env ruby
require 'pp'
# Today, we'll learn to use this special command trick, the alias method.

# With that, we can change name of the methods in diferent classes, calling the exact same method

class Alias
  def hello
    puts "Hello from original =========> Aqui o método original"
  end

  alias :new_hello :hello

  def new_hello
    puts "Aqui é um método novo  ===========> Inicio do método alias"
    hello
    puts "Aqui eu printo a saída"
  end
end
pp Alias.new.new_hello

