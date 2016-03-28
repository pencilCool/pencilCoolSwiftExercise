func swapTwoInts(inout a: Int,inout second b: Int) { // second inout b:int error
	let temporaryA = a
	a = b
	b = temporaryA
}

var a = 3, b = 5;
swapTwoInts(&a,second:&b)
print(a)
print(b)
