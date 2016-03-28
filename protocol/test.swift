class Tang {
	var one:Int
	var two:Int?
	var three:Int?
	var four:Int?
	init(one: Int , two: Int? = nil, three: Int? = nil, four: Int? = nil){
		self.one = one
		self.two = two
		self.three = three
		self.four = four	
	}
}

//var tang = Tang(one: 1, two: 2)
var tang = Tang(one: 1, two: 2, three: 3,four: 4)
print(tang.one)
print(tang.two)
print(tang.three)
print(tang.four)
