#!/usr/bin/swift

import Foundation

let romanToInt : [String: Int] = [ "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000 ]

func convert(_ roman: String) -> Int {
	return roman.characters
		.reversed()
		.map { romanToInt[String($0)]! }
		.reduce((0, 0), { (tuple, numeral) in
			( 
				max(tuple.0, numeral), 
				tuple.1 + (numeral >= tuple.0 ? 1 : -1) * numeral
			)
		}).1
}

print(convert(CommandLine.arguments[1]))
/*
print("VI is \(convert("VI")) | 6")
print("XII is \(convert("XII")) | 12")
print("XVI is \(convert("XVI")) | 16")
print("XXVIII is \(convert("XXVIII")) | 28")
print("XL is \(convert("XL")) | 40")
print("XLI is \(convert("XLI")) | 41")
print("LXIV is \(convert("LXIV")) | 64")
print("XC is \(convert("XC")) | 90")
print("XCIX is \(convert("XCIX")) | 99")
print("CCC is \(convert("CCC")) | 300")
print("M is \(convert("M")) | 1000")
print("MCMXCII is \(convert("MCMXCII")) | 1992")
*/