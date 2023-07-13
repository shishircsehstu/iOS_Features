When we define a variable or properties using static keyword, it can share the values among all the instance or object of a class. 
By adding the Static keyword to an object’s properties and methods we can use them without the need of creating an instance first. 
(note that both variables and constants can be static as well.)

class AA{
    static var count = 0
    
    init() {
        AA.count += 1
    }
    
    static func add(){
        print("Do somethings..")
    }
}
