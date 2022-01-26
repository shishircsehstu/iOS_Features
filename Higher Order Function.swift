    

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
