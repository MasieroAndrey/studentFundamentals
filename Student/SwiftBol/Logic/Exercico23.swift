//
//  Exercico23.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

//(32 °F − 32) × 5/9
//var soma:Int{
//    let number1 = Int(valor1) ?? 0
//    let number2 = Int(valor2) ?? 0
//    let operador = number1 + number2
//    return operador
//}

import SwiftUI

struct Exercico23: View {
    @State private var tempFahreneit = "0"

    
    var Calccelcius:Double{
        let number1 = Double(tempFahreneit) ?? 0
        let celciusTemp = (number1 - 32.0) * (5.0/9.0)
        return celciusTemp

    }
    
    
    var body: some View {
        Form{
            Section(header: Text("Informe a Temperatura em Graus Fahreneit")){
                TextField("valor 1", text: $tempFahreneit)
                Text("\(Calccelcius, specifier: "%.2f")")
            }
        }
    }
}

struct Exercico23_Previews: PreviewProvider {
    static var previews: some View {
        Exercico23()
    }
}
