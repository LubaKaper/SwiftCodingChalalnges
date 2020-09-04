//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// Challange 11: Three different letters
//Difficulty: Tricky
//Write a function that accepts two strings, and returns true if they are identical in length but
//have no more than three different letters, taking case and string order into account.

func threeDifferentLetters(str1: String, str2: String) -> Bool {
    guard str1.count == str2.count else {
        return false
    }
    let arr1 = Array(str1)
    let arr2 = Array(str2)
    var count = 0
    for (index, letter) in arr1.enumerated() {
        if arr2[index] != letter {
            count += 1
        }
    }
    if count > 3 {
        return false
    }
    
    return true
}

print(threeDifferentLetters(str1: "Clamp", str2: "Cramp"))
