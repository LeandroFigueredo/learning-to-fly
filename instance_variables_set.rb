#!/usr/bin/env ruby
require 'pp'

class Klass

  def set(string)
    var_name = "@#{string}"
    self.instance_variable_set(var_name, 'new_value')
  end

  def puts_value
    puts @value
  end

end
"###################"

#instancia a classe atribuindo ao k o valor da classe inicializada
k = Klass.new
# chama o método puts_value imprimindo seu valor como mostrado acima no comportamento do método.
pp k.puts_value

# chama o método set passando como parâmetro 'value' que será impressa no @value do método puts_value futuramente.
pp k.set('value')

# Agora com @value com valor atribuido, contando com o método instance_variable_set, o retorno deve ser o valor passado como parâmetro acima, reforçando o aprendizado sobre o método instance_variable_set.
pp k.puts_value

#alien
