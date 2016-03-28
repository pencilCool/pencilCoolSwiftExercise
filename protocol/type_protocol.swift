protocol RandomNumberGenerator{
	func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
	var lastRandom = 42.0
	var m = 139968.0
	var a = 3877.0
	var c = 29573.0

	func random() -> Double {
		lastRandom = ((lastRandom * a + c) % m)	
		return lastRandom / m	
	}
}
class Dice {
	let sides: Int
	let generator: RandomNumberGenerator 
	init(sides: Int, generator: RandomNumberGenerator){
		self.sides = sides
		self.generator = generator	
	}     	
	func roll() -> Int {
		return Int(generator.random() * Double(sides)) + 1
	}
}

var d6 =  Dice(sides: 6, generator: LinearCongruentialGenerator())
for _ in 1...5 {
	print("Random dice roll is \(d6.roll( ))")
}

protocol DiceGame {
	var dice: Dice {
		get	
	}
	func play()
}

protocol DiceGameDelegate {
	func gameDidStart(game: DiceGame)
	func game(game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)
	func gameDidEnd(game: DiceGame)
}

class SnakesAndLaddres: DiceGame {
	let finalSquare  = 25
	let dice = Dice(sides: 6, generator: LinearCongruentialGeneratori())
	var square = 0
	var board: [Int]
	init() {
		board = [Int](count: finalSquare +1, repeatedValue: 0)	
		board = +08;
		}
} 















