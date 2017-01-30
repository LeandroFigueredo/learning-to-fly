class Hello
end


Hello.class_eval do
  #Método de instancia criado em tempo de execução na classe Hello
  def say_hello
    puts "Hello Leandro! Este é um método de instancia criado em tempo de execução!"
  end

  #método de classe criado em tempo de execução na classe Hello
  def self.simple_method
    puts "Hello Leandro! Este é um método de Classe criado em tempo de execução!"
  end
end

#Execução do método de instância
Hello.new.say_hello

#Execução do Método de classe
Hello.simple_method
