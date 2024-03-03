import Cocoa
//Cool features in Swift

// Feature #1: Backslash before double quotes
let quote = "He tapped a sign that said \"Believe\" and walked away."

//Feature #2: Triple quotes for multiline strings
let youtubeVideo = """
Trying Out
The New
iPhone 15 
- MKBHD
"""

//Feature #3: How many letters in a string
print(quote.count) // 53

//Feature #4: Substring prefixes and suffixes !!! Really cool
print(quote.hasPrefix("Trying")) // True 
print(quote.hasSuffix("mkbhd")) // False as Swift is case sensitive

//Feature #5: Multiples 
let number = 51
print(number.isMultiple(of: 3)) // True

//Feature #6: Randomization
let id = Int.random(in: 1...50) // Any number between 1 and 50 

//Feature #7: Doubles even if ending in .0
let gpa = 3.7 
let gpa2 = 3.0 // also a double

//Feature #8: Toggle
var darkMode = false
darkMode.toggle() //For booleans

//Feature #9: String Interpolation 
let name = "Bill Gates"
let salary = 600000000
let message = "I'm \(name) and I earn \(salary) dollars per year"
print(message) 

//Feature #10: Strongly Typed Arrays
var fruits = ["Apple", "Banana", "Orange"]
let ages = [20, 19, 22, 18]
var grades = [3.6, 2.5, 3.9, 3.2]

fruits.append("Carrot") // can only append a string type
ages.remove(at: 2) // removes 22 
grades.contains(3.8) // false

//Feature #11: Default values in dictionaries
let book = [
    "title": "The Infinite Sea",
    "pages": 300
]

print(book["title", default: "Unknown"]) // can default values if not found

//Feature #12: Set functions
var primes = Set([1,2,3,5,5,7])
print(primes) // random order

primes.insert(13) // Don't need to specify where
primes.contain(4) // Can do this operation in O(1)

//Features #13: enum function
enum Weekend{
    case saturday, sunday
} // set of names valued that makes code safer

var day = Weekday.saturday
day = .sunday 

//Features #14: Type Annotations 
var rating: Double = 0 // can force a type

let singer: String = "Laufey"
let unluckyNumber: Int = 4
let courseCredit: Double = 0.25
var powerSwitch: Bool = false

var games: [String] = ["Mario", "Pokemon"] 
var phone: [String: String] = ["Brand": "Apple"] 
var movies: Set<String> = Set(["Pulp Fiction", "Fight Club"])

var sports: [String] = [String]() // Empty array

enum PrimaryColor {
    case blue, red, yellow
}

var color: PrimaryColor = .blue

// Features #15: Conditional statements
let grade = 78
if grade < 80{
    print("You are not eligible for exchange.")
} // this is the syntax for conditional statements

//Features #16: Switch Statements
enum Moods {
    case happy, sad, angry
}

let emotion = Moods.sad

switch emotion{
    case .happy:
        print("It's a good day to be happy")
    case .sad:
        print("You'll be okay.")
    default: 
        print("Calm down!")
} // number of cases (including default) must equal size of enum

//Features #17: Ternary Operator: No differences from Javascript 

//Features #18: Loops
let animes = ["Dragonball", "One Piece", "Naruto"]

for show in animes {
    print("\(show) is the best of all time!")
}

for i in 1...6 {
    print("There is/are \(i) round(s) of Squid Game")
}// 1 through 6

for j in 1..<6 {
    print("1^\(j) = 1")
}// 1 through 5

var powerfulLyric = ""

for _ in 1...4{
    powerfulLyric += "Repetition"
}

print("Remember that one David Bowie song that goes like...\(powerfulLyric)")

var countDown = 3

while(countDown > 0){
    print("\(countDown)...")
    countDown -= 1
}

print("Let it rip!!!") // 3...2...1... Let it rip!!!

let documents = ["assignment.docx", "resume.pdf", "cv.jpeg"]

for document in documents{
    if document.hasSuffix(".pdf") == false{
        continue
    }
    print("Resume has been found: \(document)")
}

//Features #19: Function 

func printTimesTable(number: Int){
    for i in 1...12{
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 2)

func rollDice() -> Int {
    Int.random(in: 1...6) // Don't need return keyword for one line functions and "in: 1...6" means in the range of 1-6
}

let result = rollDice()
print(result)

//Features #20: Tuples 

func getName() -> (firstName: String, lastName: String){
    (firstName: "Tina", lastName: "Fey")
}

let actress = getName()
print("My favourite actress is \(user.firstName) \(user.lastName)")

let (firstName, _) = getName()
print("Her first name is \(firstName)")

//Features #21: Hiding Parameters for abstraction
func isLowercase(_ string: String) -> Bool {
    string = string.lowercased()
}

let string = "hello :3"
let result = isLowercase(string)

func printTimesTable(for number: Int){
    for i in 1...12{
        print("\(number) x \(i) = \(number * i)")
    }
}

printTimesTable(for: 3)

//Features #22: Default values for parameters

func honorific(_name: String, formal: Bool = false){
    if formal{
        print("\(person)-sama")
    }
    else{
        print("\(person)-san")
    }
}

honorific("Jonathan") // no formality

//Features #23: Error handling 

enum UsernameError: Error{
    case short, invalidEnd
}

func checkUsername(_ username: String) throws -> String{
    if email.count < 5 {
        throw UsernameError.short
    }

    if !(email.hasSuffix(".com")){
        throw UsernameError.invalidEnd
    }

    return "Valid email" 
}

do {
    let result = try checkUsername("jonathan@github.ca")
    print("My email is \(result)")
}catch UsernameError.invalidEnd{
    print("This domain does not exist!")
}catch {
    print("An error occured.")
}

//Features #24: Closures

let sayGoodbye = {
    print("Goodbye!")
}

sayGoodbye()

//With parameters
let sayFarewell = { (time: String) -> String in 
    "Until \(time) my friend!" // everything after in is considered part of the body
}

//Filtering like JavaScript
let basketballTeam = ["Lebron", "Curry", "Kobe"]

let onlyT = basketballTeam.filter( { (name: String) -> Bool in 
    return name.hasPrefix("C") 
})

print(onlyT)

//Features #25: Simplification features
//For function with only one line, no need to include return 
let onlyT = basketballTeam.filter( { (name: String) -> Bool in 
    name.hasPrefix("C") 
})

//Filter must always receive an input and always return a boolean 
// can remove parameter and return types 
let onlyT = basketballTeam.filter( { name in 
    name.hasPrefix("C")
})

//Can remove opening and closing brackets
let onlyT = basketballTeam.filter{ name in 
    name.hasPrefix("C")
}

//Can use special keywords like $0 or $1 and remove name in
let onlyT = basketballTeam.filter{ $0.hasPrefix("C") }

//Features #26: structs

struct Movie{
    let title: String
    let director: String
    var inTheatres = true

    func printMovie() {
        print("\(title) directed by \(director)")
    }

    mutating func removeFromTheatres() {
        isTheatres = false // Need to have a mutating func if you want to change a value
    }
}

let parasite = Movie(title: "Parasite", director: "Bong Joon Ho")
print(parasite.title)
parasite.printMovie()

//Features #27: Computed properties

struct BabysatKid {
    let name: String
    var cookiesAllowed = 4
    var cookiesEaten = 0 

    var cookiesRemaining: Int {
        cookiesAllowed - cookiesEaten //updated dynamically
    }
}

//if you want to modify get/set

struct BabysatKid {
    let name: String
    var cookiesAllowed = 4
    var cookiesEaten = 0 

    var cookiesRemaining: Int {
        get{
            cookiesAllowed - cookiesEaten //get values
        }
        set{
            cookiesAllowed = cookiedEaten + newValue //set a new value
        }
    }
}

//Features #28: Property observers

struct BankAccount {
    var money = 0{
        didSet {
            print("Remaining balance is \(money)") //prints as it happens
        }
    }
}

var TD = BankAccount()
TD.money += 1000
TD.money -= 800

//Features #29: Initializers 

//Will have these properties have values by the end
struct PokemonCard {
    let name: String
    let HP: Int

    init(name: String) {
        self.name = name
        HP = Int.random(in: 50...200)
    }
}

//Features #30: Access Control
// Four options:
// Private (nothing outside of struct can read/write)
// Private set (outside struct can read but not write)
// File (anything inside current file can read/write)
//Public (Anyone anywhere can read or write)
struct Motivation {
    private(set) var energy = 0 

    mutating func energize(amount: Int){
        energy += amount
    }

    mutating func drain(amount: Int) -> Bool{
        if energy > funds{
            energy -= amount
            return true 
        } else{
            return false
        }
    }
}

let me = Motiviation(energy: 50)
print(me.energy)
me.energy += 500 //Error

//Features #31: Static properties and methods
struct SoftwareUpdateData {
    static let verison = "8"
    static let nickname = "Oreo"
}

//everywhere you want to read these values => it will always be read directly 

//Features #32: Classes are different
// 1. Can make classes inherit or build on top of another class

class Student {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I study \(hours) hours a day")
    }
}

class Engineer: Student {
    func study() {
        print("I'm grinding for \(hours) hours a day")
    }

    //if we want to change a method
    override func printSummary() {
        print("I spend \(hours) hours a day arguing with people on Reddit.")
    }
}

let Jonathan = Engineer(hours: 10)
Jonathan.printSummary()
Jonathan.study()

//2. For any child class with a custom initializer, it must call the parents initializer 
// after configuring its own
// If a subclass has no custom initializer it will inherit its parents'

class Food {
    let isFastFood: Bool 

    init(isFastFood: Bool){
        self.isFastFood = isFastFood
    } 
}

class Burger: Food {
    let isHealthy: Bool 

    init(isFastFood: Bool, isHealthy: Bool){
        self.isHealthy = isHealthy 
        // call up to parent class and use initializer 
        super.init(isFastFood: isFastFood)
    }
}

// #3. All copies of a class have the same share of data 
// one instance changes => all copies of the instance are changed

class Musician {
    var name = "Bob Marley"
}

var musician1 = Musician()
var musician2 = musician1

musician2.name = "Elvis Presley"
print(musician1.name)
print(musician2.name)
// They will both print Elvis

// #4. Classes can have a deinitializer if they need to if
// the last reference object is destroyed 

class Bug {
    let id: Int

    init(id: Int){
        self.id = id
        print("Bug \(id) has been born")
    }

    deinit{
        print("Bug \(id) has been destroyed")
    }
}

for i in 1...3 {
    let bug = Bug(id: i)
    print("Bug \(bug.id) is now alive")
}

// It would print Bug 1 has been born, Bug 1 is now alive, Bug 1 has been destroyed

// Classes #5: Classes let us change variable properties even if class instance is constant

class Rapper {
    var name = "Kanye West"
}

let rapper = Rapper()
rapper.name = "Jay-Z"
print(rapper.name)
// Would print Jay-Z, can change properties without the mutating keyword

// Feature #33: Protocols define functionality that we expect to be supported

protocol Bird {
    // Read only
    var name: String { get } 
    //Read and write
    var currentFeathers: Int { get set }
    //ony specific the minimum, can add more
    func flyTime(for distance: Int) -> Int
    func travel(distance: Int)
}
// ^ specify only names, parameters, return types

struct Heron: Bird{
    let name = "Blue Heron"
    var currentFeathers = 5000

    func flyTime(for distance: Int) -> Int {
        distance/10
    }

    func travel(distance: Int){
        print("I'm flying for \(distance) kilometers")
    }

    func clearSkies() {
        print("Great weather for flying!")
    }
}

func fly(distance: Int, using bird: Bird){
    if bird.flyTime(for: distance) >  50 {
        print("You are going to get eaten by birds of prey")
    } else{
        bird.travel(distance: distance)
    }
}

let heron = Heron()
fly(distance: 60, using: heron)

// Feature #34: Extensions
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    //Changes the actual string itself
    mutating func trim() {
        self = self.trimmed()
    }

    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var lyric = " Imagine there's no heaven "
lyric.trim()

let haiku = """
An old silent pond
A frog jumpts into the pond-
Splash! Silence again
"""

print(haiku.lines.count)

//Feature #35: Extensions for Collections
extension Collection {
    //Very useful 
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let languages = ["English", "French", "Russian"]

if languages.isNotEmpty{
    print("Languages count: \(languages.count)")
}

//Feature #36: Optionals (definitely interesting)

let complementary = [
    "Black": "White",
    "Blue": "Orange"
]

let redComplementary = complementary["Red"]
// but this value does not exist, redcomplementary isn't a regular string
// optionals are data that might be there but maybe not 
// optional string or nil is the data type
// you can use the if let to unwrap the optional 
if let blackComplementary = complementary["Black"]{
    print("Black's complement is \(blackComplementary)")
}

// Feature #37: Optionals (guard let)
func printHalf(of number: Int?) {
    guard let number = number else {
        print("Input is not a number")
        return 
        // this return statement is necessary
    }

    print("\(number) divied by 2 is is \(number/2)")
}

//Feature #38: Nil coalescion 
let netflixShows = ["Bridgerton", "Better Call Saul", "The Witcher"]
let recommended = netflixShows.randomElement() ?? "None"

let formInput = ""
let integer = Int(formInput) ?? 0 
print(integer)

//Feature #39: Optionals in optionals (optionalception)
let numberArray = [10.3,15.4,74.8,23.2]
let chosenNumber = numberArray.randomElement()?.rounded()
print("The winning number is: \(chosenNumber ?? "No number available")")

//Feature #40: Optional try?
enum PasswordErrorCases: Error{
    case shortPassword, guessable
}

func getPassword(id: Int) throws -> String{
    throw PasswordErrorCases.guessable
}

if let password = try? getPassword(id: 3) {
    print("Password: \(password)")
}