    struct personInfo{
    
    var name: String
    var age: Int
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}


     func filterImplement(){
        
        let numbers = [1,3,4,5,7]
        let newArray = numbers.filter { $0 > 4 }
        // return greater than 4 value
        print(newArray)
        //Output:  [5, 7]
        
        let totalValueGreaterThanFour = numbers.filter{$0>4}.count
        print(totalValueGreaterThanFour)
        // output 2. because 2 value(5,7) greater than 4
        
        let nameArray = ["shakil","jack","Mack","Rajjk"]
        let newNames = nameArray.filter{$0.count==4}
        // return whose name contains 4 letter.
        print(newNames)
        //Output: ["jack", "Mack"]
    }



    func mapImplement(){
        
        let numbers = [1,2,5,7]
        let doubled = numbers.map { $0 * 2 }
        print(doubled)
        //Output: [2, 4, 10, 14]
        
        
        let names = ["azad","Adam","John"]
        let upperLetter = names.map{$0.uppercased()}
        print(upperLetter)
        //output: ["AZAD", "ADAM", "JOHN"]
        
        var persons = [personInfo]()
        
        persons.append(personInfo(name: "Azad", age: 21))
        persons.append(personInfo(name: "Joss", age: 17))
        persons.append(personInfo(name: "Jacks", age: 30))
        persons.append(personInfo(name: "Rafik", age: 20))
        
        let ages = persons.map{ $0.age }
        print(ages)
        //Output: [21, 17, 30, 20]
        
        
        //CompactMap
         var numsStr = ["12",nil,"6",nil,"50"]
        print(numsStr.count) //
        let values = numsStr.compactMap { $0}
        print(values.count) // 3
        print(values) // ["12", "6", "50"]
        
        // compactMap removed the all nil values
        
       /* In summary, if you need to transform an array and remove any nil values, use compactMap.
        If you need to flatten an array and remove any nil values resulting from the transformation, use flatMap.
        */
        
    }
