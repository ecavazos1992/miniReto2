//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

class Auto{
    
    var velocidad : Velocidades
    
    init (){
        self.velocidad = Velocidades.init(velocidadInicial : Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena : String){
        
        switch self.velocidad {
        case Velocidades.Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            return (self.velocidad.rawValue, "Velocidad Baja")
        case Velocidades.VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            return (self.velocidad.rawValue, "Velocidad Media")
        case Velocidades.VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            return (self.velocidad.rawValue, "Velocidad Alta")
        case  Velocidades.VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            return (self.velocidad.rawValue, "Velocidad Media")
        }
        
    }
    
}

var auto = Auto()


for i in 1...20 {
    print("\(i). \(auto.cambioDeVelocidad())")
}

