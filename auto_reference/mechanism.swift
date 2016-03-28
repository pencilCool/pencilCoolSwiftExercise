class Person{
	let name:String
	init(name:String){
		self.name = name
		print("\(name) is being initialized")	
	}
	deinit{
		print("\(name) is being deinitialized")	
	}
}
// Person? 类型这些变量都还是nil 不会引用Person 类
var reference1: Person?
var reference2: Person?
var reference3: Person?
// 3 strong reference 
reference1 = Person(name:"John Appleseed")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
// 输出deinit 的内容
reference3 = nil

