struct IntStack {
	var items = [Int]( ) 
	mutating func push(item: Int){
		items.append(item)	
	}
	mutating func pop()->Int {
		return items.removeLast()	
	}
}

struct Stack<T> {
	var items = [T]()
	mutating func push(item: T) {
		items.append(item)	
	}
	mutating func pop()->T {
		return items.removeLast()	
	}
}

var stackOfString = Stack<String>()
stackOfString.push("tang")
stackOfString.push("yu")
stackOfString.push("hua")

let fromTheTop = stackOfString.pop()
print(fromTheTop)

extension Stack {
	var topItem: T? {
		return items.isEmpty ? nil : items[items.count - 1]	
	}
}

if let topItem = stackOfString.topItem {
	print("The top item on the stack is \(topItem)")
}

