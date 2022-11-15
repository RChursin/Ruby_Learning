
require 'benchmark' # for benchmarking

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)] # Create hash of letters and numbers
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)] # Create hash of letters and numbers

string_time = Benchmark.realtime do  # Benchmark string hash
  100_000.times { string_AZ["r"] }  # 100,000 iterations
end

symbol_time = Benchmark.realtime do  # Benchmark symbol hash
  100_000.times { symbol_AZ[:r] }  # 100,000 iterations
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."