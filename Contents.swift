import UIKit



func isCharsUnique(string: String) -> Bool {
    let mystring = string
    if Set(mystring).count == string.count {
        return true
    } else {
        return false
    }
}
isCharsUnique(string: "Hello, world")

func isPolindrome(str: String) -> Bool {
    var newStr = ""
    for char in str {
        newStr = String(char) + newStr
        if newStr == str {
            return true
        }
    }
    return false
}
print(isPolindrome(str: "aaaa a"))

func isSameCharacters(str1: String, str2: String) -> Bool {
    var dictStr1 = [Character: Int]()
    var dictStr2 = [Character: Int]()
    for char in str1 {
        dictStr1[char] = (dictStr1[char] ?? 0) + 1
    }
    for char2 in str2 {
        dictStr2[char2] = (dictStr2[char2] ?? 0) + 1
    }
    if dictStr1 == dictStr2 {
        return true
    }
    
    return false
}

print(isSameCharacters(str1: "brain", str2: "niabr"))


func howManyCharacters(str: String, character: Character) -> Int {
    var count = 0
    for letter in str {
        if letter == character {
            count += 1
        }
    }
    return count
}
print(howManyCharacters(str: "aannnnaaa", character: "a"))

func removeDuplicasteLatters(str: String) -> String {
   // var count = 0
    var noDuplicatesStr = ""
    for char in str {
        if !noDuplicatesStr.contains(char) {
            noDuplicatesStr.append(char)
        }
        
       
        
    }
    return noDuplicatesStr
}

print(removeDuplicasteLatters(str: "aamm"))


func condenseWhiteSpaces(str: String) -> String {
   return str.replacingOccurrences(of: " +", with: " ",
    options: .regularExpression, range: nil)
}

//Challange 8

//Write a function that accepts two strings, and returns true if one string is rotation of the other,
//taking letter case into account.
//Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

//if you write a string twice it must always encapsulate all possible rotations. So if your string was “abc” then you would double it to “abcabc”, which contains all possible rotations: “abc”, “cab”, and “bca”.


func isRotatedString(input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else {
        return false
    }
    let doubleInput = input + input
    if doubleInput.contains(rotated) {
        return true
    }
    
    return false
}

print(isRotatedString(input: "swift", rotated: "ftswi"))


// Challange 9

func isPangram(input: String) -> Bool {
    
    let set = Set(input.lowercased())
    // this filter out only letters
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
//    let alphabet = "abcdefghijklmnopqrstuvwxyz"
//    let inputLower = Set(input.lowercased().replacingOccurrences(of: " ", with: ""))
//    let sortedInput = String(inputLower).sorted()
//    if sortedInput.count == alphabet.count {
//        return true
//    }
//    return false
}
print(isPangram(input: "Jock nymphs waqf drug vex blitz"))

// Challange 10 Vowels and Consonants

func vowelsAndConsonants(str: String) -> (vowels: Int, consonants: Int) {
    
    let vowels = "a,e,i,o,u"
    var vowelCounter = 0
    var consonantsCounter = 0
    let consonants = "b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z"
//    let okayChars : Set<Character> = Set("abcdefghijklmnopqrstuvwxyz")
//    str.lowercased()
//    str.filter { okayChars.contains($0) }
    
    for char in str.lowercased() {
        if vowels.contains(char){
            vowelCounter += 1
            
        } else if consonants.contains(char) {
            print(char)
            consonantsCounter += 1
           
        }
    }
    
  //  str.components(separatedBy: .punctuationCharacters).joined().components(separatedBy: " ")
//    let set = CharacterSet.punctuationCharacters
//    str.replacingOccurrences(of: " ", with: "")
    return (vowelCounter, consonantsCounter)
}

let myInput = "Swift Coding Challenges"

print(vowelsAndConsonants(str: myInput))


