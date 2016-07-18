//: Velocímetro de un Automovil Digital
// Autor: Daniel Pérez

import UIKit

// Enumeración de velocidades
enum Velocidades : Int {
    case Apagado = 0,
        VelocidadBaja = 20,
        VelocidadMedia = 50,
        VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades) {
        self = velocidadInicial
    }
    
    func descripcion() -> String {
        switch self {
        case .Apagado:
            return "Apagado"
        case .VelocidadBaja:
            return "Velocidad Baja"
        case .VelocidadMedia:
            return "Velocidad Media"
        case .VelocidadAlta:
            return "Velocidad Alta"
        }
    }
}

// Clase Auto
class Auto {
    // Propiedades
    var velocidad : Velocidades
    
    // Inicializador
    init() {
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    // Método para cambio de velocidad
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena : String) {
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
        }
        return (velocidad.rawValue, velocidad.descripcion())
    }
}

// Prueba
// Crea la instancia de la clase
var auto = Auto()
auto.velocidad

// Iteración

/*
 for i in 1...20 {
    var resultado = auto.cambioDeVelocidad()
    print(resultado)
}
*/
