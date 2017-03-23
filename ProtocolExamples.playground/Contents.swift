//: Playground - noun: a place where people can play

import UIKit


class Rectangle :Shape ,WhoIAm{
    internal func WhoIAm() {
        print("I am Rectangle")
    }

    internal func color() -> String {
        return renk
    }

    internal func circumstate() -> Double {
    return  2 * (x+y)
    }

    internal func area() -> Double {
        return x * y    }


    let x: Double
    let y : Double
    let renk :String
    
    init(x: Double, y : Double , renk : String) {
        
        self.x = x
        self.y = y
        self.renk = renk
    }

}
class Squre  : Shape, WhoIAm{
    internal func WhoIAm() {
        print("I am Squre")
    }

    internal func color() -> String {
        return renk
    }

    internal func circumstate() -> Double {
        return 4 * a
    }

    internal func area() -> Double {
        return a * a
    }

    let a : Double
    let renk :String

    init(a: Double , renk : String) {
        self.a = a
        self.renk = renk
    }

}

class Circle : Shape , WhoIAm, Equatable{
    internal func WhoIAm() {
        print("I am Circle")
    }

    internal func color() -> String {
        return renk
    }

    internal func circumstate() -> Double {
        return 2 * 3 * r
    }

    internal func area() -> Double {
        return r * r * 3
    }
    public static func ==(lhs: Self, rhs: Self) -> Bool
    

    let r : Double
    let renk :String


    init(r: Double , renk : String) {
        self.r = r
        self.renk = renk
    }
}

protocol Shape {

    func area() -> Double
    func circumstate() -> Double
    func color() -> String

}
protocol WhoIAm {

    func WhoIAm()

}

var kare = Squre(a: 4 , renk : "sari")
kare.area()
kare.circumstate()
kare.color()
kare.WhoIAm()
var daire  = Circle(r: 3, renk : "beyaz")
daire.area()
daire.circumstate()
daire.color()
daire.WhoIAm()
var dikdortgen = Rectangle(x: 7,y: 8 , renk : "siyah")
dikdortgen.area()
dikdortgen.circumstate()
dikdortgen.color()
dikdortgen.WhoIAm()
































