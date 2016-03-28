import Foundation
@objc protocol CounterDataSource {
	optional func incrementForCount(count: Int) -> Int
	optional var fixedIncrement: Int {
		get 	
	}
	
}

@objc class Counter {
	var count = 0	
	var dataSource: CounterDataSource?
	func increment(){
		if let amount = dataSource?.incrementForCount?(count) {
			count += amount	
		} else if let amount = dataSource?.fixedIncrement? {
			count += amount	
		}
	}
}

@objc class ThreeSource: CounterDataSource {
	let fixedIncrement = 3
}

var counter = Counter 
counter.dataSource = ThreeSource()
for _ in 1...4 {
	counter.increment()
	print(counter.count)
}























