protocol Togglable {
	mutating func toggle()
}

enum OnOffSwitch: Togglable {
	case Off, On
	mutating func toggle() {
		switch self{
		case Off:
			self = On
		case On:
			self = Off	
		}	
	}
}

var lightSwitch = OnOffSwitch.Off
lightSwitch.toggle()

print(lightSwitch)
