//
//  main.swift
//  IntroToRecursion
//
//  Created by Joyce Tao on 2022-11-15.
//

import Foundation

// Iteration: for-in
for i in 1...10 {
    print(i)
}
print("I can count to ten! 🎉")

print("---")

// Iteration: while
var i = 1
while i <= 10 {
    print(i)
    i += 1
}
print("I can also count to ten! 🥳")

print("---")

// Recursion
// Define the recursive function
func countUp(with j: inout Int) {
    
    print(j)
    j += 1
    
    if j <= 10 {
        countUp(with: &j)
    } else {
        // All done (base case is j equals 11)
        print("I can count to ten in what feels like an overly complicated way! 🤓🎈")
    }
}

// Invoke the recursive function
var currentValue = 1
countUp(with: &currentValue)
print("After the function has run, currentValue is: \(currentValue)")
