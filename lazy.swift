// A lazy stored property is a property whose initial value isn't calculated until the first time it's used.

class Device{
    
    var name = String()
    lazy var lazyValue: Int = {
        var cnt=0
        for i in 1...3{
            cnt+=i
            print("Lazy :",cnt)
        }
        print("Lazy called")
        return cnt
    }()
    
    var nonLazyValue: Int {
       
        var cnt=0
        for i in 1...3{
            cnt+=i
            print("non lazy: ",cnt)
        }
       
        return cnt
    }
    
}

