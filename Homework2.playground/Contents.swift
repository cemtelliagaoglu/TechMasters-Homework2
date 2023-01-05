import Cocoa

class Homework2{
    // Question 1
    func convertFahrenheitToCelcius(fahrenheit:Double) -> Double{
        let celcius = (fahrenheit - 32) / 1.8
        guard let celc = Double(String(format: "%.2f", celcius)) else{ return 0 }
        return celc
    }
    
    // Question 2
    func calcPerimeterOfRectangle(a: Double, b: Double){
        let perimeter = 2 * ( a + b)
        print("Perimeter of the rectangle with dimensions \(a)x\(b): \(perimeter) ")
    }
    
    // Question 3
    func factorial(n: Int) -> Int{
        if n == 2{
            return n
        }
        return n * factorial(n: n - 1)
    }
    
    // Question 4
    func findTheNumberOfA(str:String){
        var counter = 0
        str.map({  counter = $0 == "a" ? counter + 1: counter })
        print("There are \(counter) a letters")
    }
    
    // Question 5
    func sumOfInteriorAngles(n: Int)-> Int{
        return (n - 2) * 180
    }
    
    // Question 6
    func calcSalaryByDays(d: Int) -> Int{
        let totWorkHours = d * 8
        if totWorkHours > 160{
            let overtime = totWorkHours - 160
            return (160 * 10 + overtime * 20)
        }else{
            return totWorkHours * 10
        }
    }
    
    // Question 7
    func calcInternetBill(usage: Int) -> Int{
        if usage <= 50{
            return 100
        }else{
            let overUsage = usage - 50
            return 100 + ( overUsage * 4)
        }
    }
}

let hw2 = Homework2()
// Question 1
let celcius = hw2.convertFahrenheitToCelcius(fahrenheit: 120)
print("\(celcius)˚C")

// Question 2
hw2.calcPerimeterOfRectangle(a: 3.5, b: 4)

// Question 3
let factorial = hw2.factorial(n: 4)
print("Result of the factorial:", factorial)

// Question 4
hw2.findTheNumberOfA(str: "how many a letters are there?")

// Question 5
let sumOfInteriorAngles = hw2.sumOfInteriorAngles(n: 5)
print("Sum of Interior Angles:", sumOfInteriorAngles)

// Question 6
let salary = hw2.calcSalaryByDays(d: 25)
print(salary)

// Question 7
let bill = hw2.calcInternetBill(usage: 100)
print(bill)
