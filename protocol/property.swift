protocol SomeProtocol {
	var mustBeSettable: Int {
		get set	
	}

	var doesNotNeedToBeSettable: Int {
		get	
	}

}

protocol AnoterProtocol {
	static var someTypeProperty: Int {
		get set	
	}
}

protocol FullNamed {
	var fullName: String {
		get	
	}
}


// struct is ok!!
struct Person: FullNamed {
	var fullName : String
}

let join = Person(fullName: "John Appleseed") 

class Starship: FullNamed {
	var prefix: String?
	var name: String
	init(name: String, prefix: String? = nil){
		self.name = name
		self.prefix = prefix	
	}

	var fullName: String {
		return (prefix != nil ? prefix! + " ": " ") + name	
	}
}

var nccl701 = Starship(name: "Enterprise", prefix: "USS")

print(nccl701.fullName)





























