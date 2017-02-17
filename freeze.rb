require 'benchmark'
require 'benchmark/ips'

def noop(args)
end

Benchmark.ips do |x|
  x.report("normal") { noop("foo") }
  x.report("frozen") { noop("bar".freeze) }
end

puts Benchmark.measure { "a"*1_000_000 }

n = 50000

Benchmark.bm(7) do |x|
  x.report { for i in 1..n; a = "1".freeze; end }
  x.report { n.times do   ; a = "1";        end }
  x.report { 1.upto(n) do ; a = "1";        end }
end