class Person {
	let name: String
	init(name: String){
		self.name = name	
	}
weak	var apartment: Apartment?
	deinit{
		print("\(name) is being deinitialized")	
	}
}

class Apartment{
	let unit: String
	init(unit: String){
		self.unit = unit	
	}
        var tenant: Person?
	deinit{
		print("Apartment \(unit) is being deinitialized")	
	}
}

// above 只是定义，并没有什么东西引用。


var john: Person?
var unit4A: Apartment?

john = Person(name:"John Appleseed")
unit4A = Apartment(unit:"4A")
//  above 还是没有出错。只是可能需要定义各自的某一个属性的时候，建立联系,才会出现循环应用

john!.apartment = unit4A
unit4A!.tenant = john
// 暂时还没有报错。

john = nil
// above no complier error
unit4A = nil


























