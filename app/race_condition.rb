counter = 0

threads = 100.times.map do
  Thread.new do
    10000.times do
      counter += 1
    end
  end
end

threads.each(&:join)
puts "Counter akhir: #{counter}"
