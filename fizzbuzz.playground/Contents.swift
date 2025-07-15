import UIKit

func fizzBuzz(n num: Int) {
    for i in 1...(num) {
        if i % 3 == 0 && i % 5 == 0 {
            print("FIZZBUZZ!")
        } else if i % 3 == 0 {
            print("FIZZ")
        } else if i % 5 == 0 {
            print("BUZZ")
        } else {
            print(i)
        }
    }
}

fizzBuzz(n: 100)
