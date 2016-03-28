extension Int {
	enum Kind {
		case Negative, Zero, Positive	
	}

	var king: Kind {
		switch self {
		case 0:
			return .Zero
		case let x where x > 0:
			return .Positive
		default:
			return .Negative
		}	
	}
}

func printIntegerKinds(numbers: [Int]){
	for number in numbers {
		switch number.kind {
		case .Negative:
			print("- ",appendNewline: false)	
		case .Zero:
			print("0 ",appendNewline: false)
		case .Positive:
			print("+ ",appendNewline: false)
		}	
	}
	print("")
}

var tang = 4.kind
print(tang)
//printIntegerKinds([3, 19, -27, 0, -6, 0,7])


