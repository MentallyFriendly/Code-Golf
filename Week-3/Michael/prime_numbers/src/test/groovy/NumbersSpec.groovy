import spock.lang.*
import groovy.time.*
import com.michaelr.Numbers

class NumbersSpec extends Specification {

  @Shared number = new Numbers()

  def "should return true for prime number"() {
    expect:
    number.isPrime(53)
    number.isPrime(2)
  }

  def "should return false for non-prime number"() {
    expect:
    !number.isPrime(50)
    !number.isPrime(1)
  }

  def "should return basic simple test cases quicker than example"() {
    setup:
    def startTime = new Date()
    def result1 = number.isPrime(number.generatePrime(17))
    def result2 = number.isPrime(number.generatePrime(31))
    def result3 = number.isPrime(number.generatePrime(31) + number.generatePrime(17))
    def result4 = number.isPrime(number.generatePrime(22))
    def endTime = new Date()
    TimeDuration duration = TimeCategory.minus(endTime, startTime)

    expect:
    result1
    result2
    !result3
    !result4
    duration.seconds < 15 // runs in 285 miliseconds on my 2012 mbp
  }
}
