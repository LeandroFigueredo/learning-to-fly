class Downcase
end

Downcase.class_eval do
  def set_text_downcase(text)
    text.downcase
  end
end

nome = Downcase.new
puts nome.set_text_downcase("LEANDRO")

p = "LEANDRO FIGUEREDO"

p.instance_eval do
  def set_text_downcase
    self.downcase
  end
end

puts p.set_text_downcase