import UIKit

// variables
var num1:Int = 54
var num2:Int = 60
var num3:Int = 127
var num4:Int = 558
var num5:Int = 19

// Constants
let con1:Int = 410
let con2:Int = 811
let con3:Int = 1112
let con4:Int = 12343
let con5:Int = 154

// Create an array and read in the variables
var myArray:[Int] = []

myArray.append(num1)
myArray.append(num2)
myArray.append(num3)
myArray.append(num4)
myArray.append(num5)

myArray.append(con1)
myArray.append(con2)
myArray.append(con3)
myArray.append(con4)
myArray.append(con5)

// Using Gt Lt notation for clarity
myArray.sort(by:<)

print(myArray)

// Creating Dictionary and counter for the loop
var dictionary:[String:Int] = [:]
var counter = 0

// Loop Array and Read in items based on position
for (idx, item) in myArray.enumerated() {
    counter += 1

    if idx == myArray.endIndex - 1 {
        dictionary["highest"] = item
    } else if idx == myArray.startIndex {
        dictionary["lowest"] = item
    } else{
        dictionary["item \(counter)"] = item
    }
}

// print dictionary value of First
if let highest = dictionary["highest"] {
    print(highest)
}else if let lowest = dictionary["lowest"] {
    print(lowest)
} else {
    print("you screwed something up Mr. Kinney")
}

print("done")



