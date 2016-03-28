struct Animal{
	let species:String
	init?(species:String){
		if species.isEmpty {
		return nil
		}	
		self.species = species
	}

}

let someCreature = Animal(species:"Giraffe")

if let giraffe = someCreature {
	print("An animal was initialized with a species of \(giraffe.species)")
	
}

let annoymousCreature = Animal(species:"")

if annoymousCreature == nil {
	print("The annoymous creature could not be initialized")
}

enum TemperatureUnit {
	case Kelvin,Celsius,Fahrenheit
	init?(symbol:Character){
		switch symbol{
			case "K":
				self = .Kelvin
			case "C":
				self = .Celsius
			case "F":
				self = .Fahrenheit
			default:
				return nil

		}	
	}
}


let fahrenheitUnit = TemperatureUnit(symbol:"F")

if fahrenheitUnit != nil {
	print("This is a defined temperature unit,so initialization succeede.")
}

let unknowUnit = TemperatureUnit(symbol:"X")

if unknowUnit == nil {
	print("This is not a defined temperature unit.so initialization failed.")
}














