extension Int {
	func repetitions(task: ()->()){
		for _ in 0..<self {
			task()	
		}
	}
}

13.repetitions({
		print("Hello!")	
		})

3.repetitions({
		print("Goodbye!")	
		})

extension Int {
	mutating func square(){
		self = self*self	
	}
}

var someInt = 3
someInt.square()
print(someInt)
