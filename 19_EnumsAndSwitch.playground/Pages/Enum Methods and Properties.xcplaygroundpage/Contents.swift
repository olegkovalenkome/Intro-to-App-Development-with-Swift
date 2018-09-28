/*:
 ## Enum Methods and Properties

 In the Structures lesson you saw how to define properties and methods in a struct. You can also define them in an enum. This can be very useful in providing extra behavior.
 
 For example, you could have a property that returns a string for each value to display to the user:
*/
enum LunchChoice {
    case pasta, burger, soup
    
    var emoji: String {
        switch self {
        case .pasta:
            return "🍝"
        case .burger:
            return "🍔"
        case .soup:
            return "🍲"
        }
    }
}
let lunch = LunchChoice.pasta
lunch.emoji
/*: 
 The `self` keyword is used in methods and calculated properties and refers to the instance that is being asked for the property value.
 
 You could have a method that allows you to compare two enums. For example, in a card game like Bridge, the suits are ranked like this, with the highest scoring suit on top:
 
 - Spades
 - Hearts
 - Diamonds
 - Clubs
 
 This enum represents the suits and tells you if one suit beats another:
*/
enum Suit {
    case spades, hearts, diamonds, clubs
    
    var rank: Int {
        switch self {
        case .spades: return 4
        case .hearts: return 3
        case .diamonds: return 2
        case .clubs: return 1
        }
    }
    
    var emoji: String {
        switch self {
        case .spades:
            return "♠️"
        case .hearts:
            return "❤️"
        case .diamonds:
            return "♦️"
        case .clubs:
            return "♣️"
        }
    }
    
    func beats(_ otherSuit: Suit) -> Bool {
        return self.rank > otherSuit.rank
    }
}

let oneSuit = Suit.spades
let otherSuit = Suit.clubs
oneSuit.beats(otherSuit)
oneSuit.beats(oneSuit)
oneSuit.emoji


/////////////////////////

enum GameState {
    case start, win, lose, draw
    
    var gameStateLable: String {
        switch self {
        case .start : return "Rock, Paper, Scissors?"
        case .win : return "You won 🎉"
        case .lose : return "You lose 🤷🏻‍♂️"
        case .draw : return "No one is won"
        }
    }
}

let a = GameState.draw

///////////////////////////
import GameplayKit


enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock : return "👊"
        case .paper : return "✋"
        case .scissors : return "✌️"
        }
    }
    
    func comparePlayerSign(with botSign: Sign) -> GameState {
        if self.emoji == botSign.emoji { return .draw }
        else if self.emoji == "✌️", botSign.emoji == "👊" { return .lose }
        else if self.emoji == "✌️", botSign.emoji == "✋" { return .win }
        else if self.emoji == "👊", botSign.emoji == "✋" { return .lose }
        else if self.emoji == "👊", botSign.emoji == "✌️" { return .win }
        else if self.emoji == "✋", botSign.emoji == "✌️" { return .lose }
        else { return .win }
    }
}

let randomChoise = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoise.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

let sign = Sign.paper
let botSign = randomSign()


sign.emoji
botSign.emoji
sign.comparePlayerSign(with: botSign)


















/*:
 - experiment: Add a property to the Suit enum that returns the appropriate emoji for each case: ♠️❤️♦️♣️

 Next summarize what you’ve learned.
 
[Previous](@previous)  |  page 15 of 21  |  [Next: Wrapup](@next)
*/
