class Person {
	var residence: Residence?
}

class Residence{
	var rooms = [Room]()
	var numberOfRooms: Int {
		return rooms.count	
	}
	subscript(i:Int) -> Room {
		get {
			return rooms[i]	
		}
		set {
			rooms[i] = newValue
		}	
	}
	func printNumberOfRooms() {
		print("The number of rooms is \(numberOfRooms)")	
	}
	var address: Address?

}

class Room {
	let name: String
	init(name: String) {
		self.name = name	
	}
}

class Address {
	var buildingName: String?
	var buildingNumber: String?
	var street: String?
	func buildingIdentifier() -> String? {
		if buildingName != nil {
			return buildingName 	
		} else if buildingNumber != nil && street != nil {
			return "\(buildingNumber) \(street)"	
		} else {
			return nil	
		}	
	}
}

let john = Person()
if let roomCount = john.residence?.numberOfRooms {
	print("John's residence has \(roomCount) room(s)")
} else {
	print("Unable to retrieve the number of rooms.")
}

let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
john.residence?.address = someAddress
//john.residence?.address.buildingIdentifier()

func createAddress() -> Address {
	print("Function was called")
	
	let someAddress = Address()
	someAddress.buildingNumber = "29"
	someAddress.street = "Acacia Road"
	
	return someAddress
}
john.residence?.address = createAddress()

if john.residence?.printNumberOfRooms() != nil {
	print("It was possible to print the number of rooms. ")
} else {
	print("It was not possible to print the number of rooms.")
}

if (john.residence?.address = someAddress) != nil {
	print("It was possible to set the address.")
} else {
	print("It was not possible to set the address.")
}

if let firstRoomName = john.residence?[0].name {
	print("The first room name is \(firstRoomName)")
} else {
	print("Unable to retrieve the first room name.")
}

john.residence?[0] = Room(name: "Bathroom")


// success part 

let johnsHouse = Residence()
johnsHouse.rooms.append(Room(name: "Living Room"))
johnsHouse.rooms.append(Room(name: "Kitchen"))
john.residence = johnsHouse

if let firstRoomName = john.residence?[0].name {
	print("The first room name is \(firstRoomName).")
} else {
	print("Unable to retrieve the first room name.")
}

// swift dictionary subscript
var testScore = ["Dave":[86,82,84],"Bev":[79,94,81]]
testScore["Dave"]?[0] = 91
testScore["Bev"]?[0]++
testScore["Brian"]?[0] = 72

print(testScore)

//


























