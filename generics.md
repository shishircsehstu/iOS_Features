# Generics used write code that works for multiple types and specify requirements for those types.

func getMaxVal<T: Comparable>(a: T, b: T)->T{
    return a>b ? a:b
}

print(getMaxVal(a: "abc", b: "xyz")) // xyz
print(getMaxVal(a: 12, b: 12.4))  // 12.4
