protocol SomeProtocol {
	init( )
}

class SomeClass : SomeProtocol {
	required init( ) {
				
	}
}

class SomeSuperClass {
	init() {
		
	}
}

class SomeSubClass: SomeSuperClass, SomeProtocol {
	override required  init(){
		
	}
}
