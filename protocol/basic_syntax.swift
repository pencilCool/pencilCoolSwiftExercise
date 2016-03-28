//
protocol SomeProtocol {
	
}

// 

protocol FirstProtocol {
	
}

protocol SecondProtocol {
	
}

struct SomeStruct: FirstProtocol, SecondProtocol {
	
}

//

class Father {
	
}

class Son: Father, FirstProtocol, SecondProtocol {
	
}
//
//class AnotherSon: FirstProtocol, Father, SecondProtocol {
	
//}
//

protocol Named {
	var name: String {
		get	
	}
}

protocol Aged {
	var age: Int {
		get	
	} 
}

struct Person: Named,Aged {
	var name: String
	var age: Int
}

func wishHappyBirthday(celebrator: protocol<Named,Aged>) {
	print("Happy birthday \(celebrator.name) - you're \(celebrator.age)!")
}

let birthdayPerson = Person(name: "Malcolm", age: 21)
wishHappyBirthday(birthdayPerson)



