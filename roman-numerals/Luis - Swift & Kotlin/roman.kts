val romanToInt = mapOf("I" to 1, "V" to 5, "X" to 10, "L" to 50, "C" to 100, "D" to 500, "M" to 1000)

fun convert(roman: String) : String {
	return roman.toCharArray()
		.reversed()
		.map { romanToInt[it.toString()] ?: 0 }
		.fold(Pair(0, 0)) { pair, numeral ->
			Pair(
				arrayOf(pair.first, numeral).max() ?: 0,
				pair.second + (if (numeral >= pair.first) 1 else -1) * numeral
			)
		}.second.toString()
}

println(convert(args[0]))
/*
println("VI is ${convert("VI")} | 6")
println("XII is ${convert("XII")} | 12")
println("XVI is ${convert("XVI")} | 16")
println("XXVIII is ${convert("XXVIII")} | 28")
println("XL is ${convert("XL")} | 40")
println("XLI is ${convert("XLI")} | 41")
println("LXIV is ${convert("LXIV")} | 64")
println("XC is ${convert("XC")} | 90")
println("XCIX is ${convert("XCIX")} | 99")
println("CCC is ${convert("CCC")} | 300")
println("M is ${convert("M")} | 1000")
println("MCMXCII is ${convert("MCMXCII")} | 1992")
*/