// 
class Father{
	var member1:Int
	var member2:Int
	init(){
		member1 = 1
		member2 = 2
	
	}
	init(member1:Int,member2:Int){
		self.member1 = member1
		self.member2 = member2	
	}
}

class Son:Father{
	var sonMember:Int
	init(sonMember:Int){
		self.sonMember = sonMember;
		super.init(member1:1,member2:2)	
	}
	func tang(){
			
		self.init(sonMember:1)
	}	
	override convenience init(){
	
		self.tang()	
	}

}

let test = Son(sonMember:1)


