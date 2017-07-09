class A
  HELLO = 'world'.freeze
  def self.foo
    puts "class method A::foo, HELLO #{HELLO}"
  end

  def A.bar
    puts "class method A::bar, HELLO #{HELLO}"
  end

  class << self
    HELLO = 'universe'.freeze
    def bar
      puts "class method A::zim, HELLO #{HELLO}"
    end

    def _puts_universe_const
      HELLO
    end
  end
end

A.foo
A.bar
#A.zim
puts "A::HELLO #{A::HELLO}"
puts A._puts_universe_const