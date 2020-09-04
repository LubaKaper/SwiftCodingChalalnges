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

// NOT SOLVED
//Challenge 12: Find longest prefix
//Difficulty: Tricky
//Write a function that accepts a string of words with a similar prefix, separated by spaces, and
//returns the longest substring that prefixes all words.

func longestPrefix(input: String) -> String {
    
    var longestPrefix = ""
    
    let array = input.components(separatedBy: " ")
    
    return longestPrefix
    
}


//Challenge 15: Reverse the words in a string
//Difficulty: Taxing
//Write a function that returns a string with each of its words reversed but in the original order,
//without using a loop.
 
func reverseWords(str: String) -> String {
    let parts = str.components(separatedBy: " ")
    // .map performs some axtion on each component
    let reversed = parts.map { String($0.reversed())}
    return reversed.joined(separator: " ")
}
print(reverseWords(str: "Swift Coding Challenges"))


//Challenge 16: Fizz Buzz
//Difficulty: Easy
//Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases.

func fizzBuzz() {
    for num in 1...100 {
        if num % 3 == 0 && num % 5 == 0 {
            print("Fizz Buzz")
        } else if num % 3 == 0 {
            print("Fizz")
        } else if num % 5 == 0 {
            print("Buzz")
        } else {
            print(num)
        }
    }
}


fizzBuzz()


//Challenge 17: Generate a random number in a range
//Difficulty: Easy
//Write a function that accepts positive minimum and maximum integers, and returns a random
//number between those two bounds, inclusive.

func generateRandomNum(min: Int, max: Int) -> Int{
    return Int.random(in: min...max)
}

print(generateRandomNum(min: 4, max: 9))
