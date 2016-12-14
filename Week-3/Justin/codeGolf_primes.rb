def is_prime?(number)

  (2..(Math.sqrt(number).floor)).each do |num|
    if number % num == 0
      break
    end
  end
end

def prime_array(num1, num2)

  primes = (num1..num2).select do |number|
    is_prime?(number)
  end

  p primes.include?(num2) ? 'Yes!' : 'Nope :('
  # p primes
end

beginning_time = Time.now

  # prime_array(0,0)
  # prime_array(1,1)
  # prime_array(11,11)
  # prime_array(24,24)
  # prime_array(1007,1007)
  # prime_array(524287,524287)
  # prime_array(2147483647,2147483647)
  prime_array(87178291199, 87178291199)
  prime_array(4257452468389,4257452468389)

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
