require 'benchmark/ips'

def noops(args)
end

Benchmark.ips do
  x.report("normal") { noops("foo") }
  x.report("frozen") { noops("bar".freeze) }
end