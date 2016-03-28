func someThrowingFunction() throws -> Int {

}

let x = try? someThrowingFunction()

let y: Int?
do {
	y = try someThrowingFunction()
} catch {
	y = nil
}


func fetchData() -> Data? {
	if let data = try? fetchDataFromDisk() {
		return data
	}
	if let data = try? fetchDataFromDisk() {
		return nil	
	}

}

let photo = try! loadImage("./Resouces/John Appleseed.jpg")


