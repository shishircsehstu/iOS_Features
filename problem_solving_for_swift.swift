//init 1D array
var isVisited = [Int](repeating: 0, count: 100)

// Init 2D array
var dp = [[Int]](repeating: [Int](repeating: -1, count: 5003), count: 303)

// Find ascci value
var val = Int(yourChar.asciiValue!)

//map using dictionary 
var map = [Int: Int]()
map[-1] = 1
print(map[-1]!)


// Sort by conditions
struct Points{
    var x: Int
    var y: Int
}
func sortByCondition(){

    var points = [Points]()
    points.append(Points(x: 2, y: 20))
    points.append(Points(x: 0, y: 10))
    points.append(Points(x: 1, y: 2))
    points.append(Points(x: 1, y: 1))

    var str = points.sorted { p1, p2 in

        if p1.x==p2.x{
            return p1.y<p2.y
        }
        return p1.x<p2.x
    }


    for point in str{
        print(point.x," ",point.y)
    }
    
}
//output
0   10
1   1
1   2
2   20
