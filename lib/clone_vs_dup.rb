class Klass
  attr_accessor :str
end

module Foo
  def foo
    'foo'
  end
end


s1 = Klass.new
#==> <Klass:0x00000001c045a8>
s1.extend(Foo)
#==> <Klass:0x00000001c045a8>
s1.foo
#==> "foo"

s2 = s1.clone
#==> #<Klass:0x00000001bdf8c0>
s2.foo
#==> "foo"

s3 = s1.dup
#=> #<Klass:0x00000001bae6d0>
s3.foo
#NoMethodError: undefined method `foo' for #<Klass:0x00000001bae6d0>


