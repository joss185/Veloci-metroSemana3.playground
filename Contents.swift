//: Playground - noun: a place where people can play

import UIKit

//Velocimetro
//Joselyn Rodríguez 

//3. Enumeración y tipo Int
enum Velocidades : Int{

    //4. Elementos de la enumeración
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    //5. Función inicializadora
    init(velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}

//6. Clase
class Auto{
    
    //7. Instacnia Velocidades
    var velocidad = Velocidades(rawValue: 0)
  
    //8. Función inicializadora
    init(velocidad : Velocidades){
    self.velocidad = velocidad
    }
    
    //9. Función de cambio
    func cambioDeVelocidad(var actual : Int, var velocidadEnCadena: String) ->String{
        
        switch(actual){
        
        case 0:
            velocidad = Velocidades.Apagado
            actual = Velocidades.Apagado.rawValue
            velocidadEnCadena = "Apagado"
            break
        case 20:
            velocidad = Velocidades.VelocidadBaja
            actual = Velocidades.VelocidadBaja.rawValue
            velocidadEnCadena = "Velocidad baja"
            break
        case 50:
            velocidad = Velocidades.VelocidadMedia
            actual = Velocidades.VelocidadMedia.rawValue
            velocidadEnCadena = "Velocidad Media"
            break
        case 120:
            velocidad = Velocidades.VelocidadAlta
            actual = Velocidades.VelocidadAlta.rawValue
            velocidadEnCadena = "Velocidad Alta"
            break
        
        default:""
        }
        
        return "\(actual), \(velocidadEnCadena)."
    }
}

//10. Declaracion de auto, for que itera

var auto = Auto(velocidad: Velocidades.Apagado)
var velocidad2: Int = 0

//Iteración
for var i = 1; i <= 20; i++
{
    
   print(" \(i). \(auto.cambioDeVelocidad( velocidad2, velocidadEnCadena: ""))")
    
    if(velocidad2 == 0){
    velocidad2 = 20
    } else if (velocidad2 == 20){
        velocidad2 = 50
    }else if(velocidad2 == 50){
        velocidad2 = 120
    }
    else if(velocidad2 == 120){
        velocidad2 = 50
    }
    
}