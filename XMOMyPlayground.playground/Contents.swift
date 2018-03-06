//: Playground - noun: a place where people can play
//: Miranda Mo, CSC 471, Assignment #2
import UIKit
import Foundation

var str = "Hello, playground"

//: Problem #2
func rank(a: [Int],key: Int)->Int?{
    var lo=0
    var hi=a.count
    while lo<hi{
        let mid=lo+(hi-lo)/2
        if a[mid]==key{
            return mid
        }
        else if a[mid]<key{
            lo=mid+1
        }
        else{
            hi=mid
        }
    }
    return -1
}
let test1 = [3,5,7,8,9,15,22,56,78,93,155]
rank(a: test1, key: 22)
let test2 = [1,2,71,88,95,150,222,356,578,935,15567]
rank(a: test2, key: 15567)
rank(a: test1, key: 93)
rank(a: test2, key: 578)


//: Problem #3
class Fraction{
    var numerator: Int = 0
    var denominator: Int = 1
    
    init(_ numerator: Int, over denominator: Int){
        self.numerator = numerator
        self.denominator = denominator
    }
    
    init(){}
    
    func setTo(numerator: Int, over denominator: Int){
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func print(){
        Swift.print("\(numerator)/\(denominator)")
    }
    
    func toDouble() -> Double{
        return Double(numerator) / Double(denominator);
    }
    
    func add(_ f: Fraction) {
        numerator = numerator * f.denominator + denominator * f.numerator
        denominator = denominator * f.denominator
        reduce()
    }
    
    func sub(_ f: Fraction) {
        numerator = numerator * f.denominator - denominator * f.numerator
        denominator = denominator * f.denominator
        reduce()
    }
    
    func mul(_ f: Fraction) {
        numerator = numerator * f.numerator
        denominator = denominator * f.denominator
        reduce()
    }
    
    func div(_ f: Fraction) {
        numerator = numerator * f.denominator
        denominator = denominator * f.numerator
        reduce()
    }
    
    func reduce(){
        var u = abs(numerator)
        var v = denominator
        var r: Int
        while (v != 0){
            r=u%v; u=v; v=r
        }
        numerator /= u
        denominator /= u
    }
}

var f1 = Fraction(1, over: 2)
var f2 = Fraction(1, over: 4)
var f3 = Fraction(2, over: 5)
var f4 = Fraction(3, over: 8)
var f5 = Fraction(7, over: 8)
var f6 = Fraction(1, over: 9)
var f7 = Fraction(3, over: 4)
var f8 = Fraction(2, over: 7)

f1.add(f2)
f1.print()

f2.mul(f3)
f2.print()

f3.sub(f4)
f3.print()

f4.mul(f5)
f4.print()

f5.div(f6)
f5.print()

f6.div(f7)
f6.print()

f7.mul(f8)
f7.print()


