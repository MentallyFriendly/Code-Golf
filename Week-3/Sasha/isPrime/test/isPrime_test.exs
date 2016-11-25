defmodule IsPrimeTest do
  use ExUnit.Case

  doctest IsPrime

  test "the truth" do
    assert 1 + 1 == 2
  end

 test "zero is not a prime" do
    assert IsPrime.test(0) == false
 end

 test "one is not a prime" do
   assert IsPrime.test(1) == false
 end

 test "two is a prime" do
   assert IsPrime.test(2) == true
 end

 test "three is a prime" do
   assert IsPrime.test(3) == true
 end

 test "five is a prime" do
   assert IsPrime.test(5) == true
 end

 test "seven is a prime" do
   assert IsPrime.test(7) == true
 end

 test "twenty one is not a prime" do
   assert IsPrime.test(21) == false
 end

 test "ten thousand is not a prime" do
   assert IsPrime.test(10000) == false
 end

 test "1007 is not a prime" do
   assert IsPrime.test(1007) == false
 end

 # test "M17 is a prime" do
 #   assert IsPrime.test(Mersenne.generate(17))
 # end

 # test "M31 is a prime" do
 #   assert IsPrime.test(Mersenne.generate(31))
 # end


 # test "M31 + M17 is a not prime" do
 #   assert IsPrime.test(Mersenne.generate(31) + Mersenne.generate(17))
 # end

 # test "M22 is a prime" do
 #   assert IsPrime.test(Mersenne.generate(22))
 # end


end
