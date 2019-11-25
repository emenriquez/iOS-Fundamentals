


class Assignment {
    
    
    func fibonacci(n: Int) {
        
        var base = [0, 1]
        if n < 3 {
            print(Array(base[0..<n]))
        } else {
            for number in 3...n {
                base.append(base[number-2]+base[number-3])
            }
            print(base)
        }
    }
    
    
}

let assignment = Assignment()

assignment.fibonacci(n: 1)

print("next")

assignment.fibonacci(n: 10)
