
class Dragon: Enemy {
    var wingspan = 2
    
    func talk(speech: String) {
        print("\(self) Says: \(speech)")
    }
    
    override func move() {
        print("fly forwards")
    }
    
}
