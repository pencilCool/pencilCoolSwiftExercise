extension Int{
	subscript(var digitIndex: Int)->Int{
		var decimalBase = 1
			while digitIndex > 0 {
			   decimalBase *= 10
			   --digitIndex	   
			}	
		return (self / decimalBase) % 10
	}
}

print(123456789[0])

print(123456789[2])
