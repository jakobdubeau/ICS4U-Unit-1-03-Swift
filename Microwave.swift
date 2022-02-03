/*
*
* The Microwave program lets the user enter the food they want to heat up and how
* many of the items they want, then gives them the time they need to heat the items up.
*
* @author Jakob
* @version 1.0
* @since 2020-11-26
*/

func truncatingRemainder(dividingBy other: Double) -> Double {
   return 1
}
import Foundation

// Time for sub
let subTime: Double = 60

// Time for pizza
let pizzaTime: Double = 45

// Time for soup
let soupTime: Double = 105

// Constant
let minute: Double = 60

// Constant
let multiplierByOne: Double  = 1

// Constant
let multiplierByOneAndHalf: Double = 1.5

// Constant
let multiplierByTwo: Double = 2

// Input
print("Are you heating up pizza, a sub or soup? ")
var foodTypeString = readLine()!
var foodTypeTime: Double = 0.0
var amountTime: Double = 0.0
if foodTypeString == "sub" {
    foodTypeTime = subTime
} else if foodTypeString == "pizza" {
    foodTypeTime = pizzaTime
} else if foodTypeString == "soup" {
    foodTypeTime = soupTime
} else {
    print("Invalid food type")
    exit(0)
}
print("How much \(foodTypeString) are you heating up?")
let foodAmount = readLine()!
    if foodAmount == "1" {
        amountTime = multiplierByOne
    } else if foodAmount == "2" {
        amountTime = multiplierByOneAndHalf
    } else if foodAmount == "3" {
        amountTime = multiplierByTwo
    } else {
        print("Invalid number")
        exit(0)
    }

let time: Double = foodTypeTime * amountTime
let minutes: Double = time / minute
let seconds: Double = time.truncatingRemainder(dividingBy: minute)
let minutesFinal = Int(minutes)

print("The total heat up time is \(minutesFinal) minutes and \(seconds) seconds")
print("\nDone.")
