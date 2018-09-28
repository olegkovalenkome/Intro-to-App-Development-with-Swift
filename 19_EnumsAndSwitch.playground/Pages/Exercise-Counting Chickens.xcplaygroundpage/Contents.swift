/*:
 ## Exercise: Counting Chickens
 
 This playground has a `Chicken` type built in to it. A `Chicken` has a `breed` and `temper` property, and both properties are enums.
 
 Here is an array of chickens:
*/
Chicken.self

chickens
print(chickens[2].temper)
//:  The chickens are all hatched, so it’s safe to count them.
var chickenOfInterestCount = 0
for chicken in chickens {

    switch chicken.breed {
    case .leghorn :
        chickenOfInterestCount += 1
    default:
        print("Not intereted")
    }
    
    switch chicken.temper {
    case .hilarious:
        chickenOfInterestCount += 1
    default:
        print("Not intereted")
    }
}
chickenOfInterestCount
//: - callout(Exercise): Update the code in the `for…in` loop to only count interesting chickens, like `.hilarious` `.leghorn`s. Check out the autocompletion popup to see what the possible values for each enum are.

//: [Previous](@previous)  |  page 18 of 21  |  [Next: Exercise: Replacing Bools](@next)
