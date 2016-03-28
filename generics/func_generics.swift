func swapTwoValues<TH>(inout a: TH, inout _ b:TH){
	let temporaryA = a
	a = b
	b = temporaryA	
}

var someInt = 3
var anotherInt = 107
swapTwoValues(&someInt, &anotherInt)

print(someInt)
print(anotherInt)

var someString = "Hello"
var anotherString = " world"
swapTwoValues(&someString, &anotherString)

print(someString)
print(anotherString)








