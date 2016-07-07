//: Playground - noun: a place where people can play

import UIKit

for numero in 0...100 {
    if numero % 5 == 0 {
        // Regla 1
        print("\(numero) Bingo!!!")
    }

    if numero % 2 == 0 {
        // Regla 2
        print("\(numero) par!!!")
    }else {
        // Regla 3
        print("\(numero) impar!!!")
    }
    
    if numero >= 30 && numero <= 40 {
        // Regla 4
        print("\(numero) Viva Swift!!!")
    }
}
