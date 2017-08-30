/*
compile using the line:
kotlinc smallest-change.kt -include-runtime -d smallest-change.jar

run the application using the line:
java -jar smallest-change.jar
*/

import java.io.InputStreamReader;
import java.io.BufferedReader;


fun main (args: Array<String>) {
    val reader = BufferedReader(InputStreamReader(System.`in`))
    val price: Double
    val cash: Double
    val roundedPrice: Double
    val changeNeeded: Double
    val changeArray: DoubleArray = doubleArrayOf(100.00, 50.00, 20.00, 10.00, 5.00, 2.00, 1.00, 0.50, 0.20, 0.10, 0.05)
    var numChange: Int = 0
    var tempChange: Double
    var tempDenominationCounter: Int

    println ("Enter item price (\$AU):")
    price = reader.readLine().toDouble()
    println ("Enter cash amount (\$AU):")
    cash = reader.readLine().toDouble()
    
    println("Entered item price: (%.2f)".format(price))
    println("Entered cash amount: (%.2f)".format(cash))

    roundedPrice = roundIncomingPrice(price)
    println("Rounded incoming price: (%.2f)".format(roundedPrice))

    changeNeeded = cash - roundedPrice;
    if (changeNeeded < 0) {
        println("Insufficient cash")
    } else {
        println("Change needed: (%.2f)".format(changeNeeded))

        tempChange = changeNeeded
        for (denomination in changeArray) {
            tempDenominationCounter = Math.round((tempChange - (tempChange % denomination))/denomination).toInt()
            tempChange -= tempDenominationCounter * denomination
            numChange += tempDenominationCounter
            if (tempDenominationCounter > 0) {
                println("$%.2f - %d".format(denomination, tempDenominationCounter))
            }
            tempChange = Math.round(tempChange * 100).toDouble()/100
        }

        println("Change count: (%d)".format(numChange))        
    }
}

fun roundIncomingPrice(price: Double): Double {
    val returnPrice: Double
    val priceRoundedToNearestHundredth: Double = Math.floor(price * 10)/10.0
    val priceCents: Double = price - priceRoundedToNearestHundredth;

    if (priceCents <= 0.02 || priceCents == 0.05) {
        returnPrice = priceRoundedToNearestHundredth;
    } else if (priceCents <= 0.07) {
        returnPrice = priceRoundedToNearestHundredth + 0.05;
    } else {
        returnPrice = priceRoundedToNearestHundredth + 0.10;
    }

    return returnPrice;
}