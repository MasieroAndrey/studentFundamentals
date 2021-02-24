//
//  Exercicio10.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

import SwiftUI

struct Exercicio10: View {
    @State private var valor1 = "0"
    @State private var valor2 = "0"
    @State private var total = "0"
    
    func calcular() {
        let number1 = Int(valor1) ?? 0
        let number2 = Int(valor2) ?? 0
        let sub = number1 - number2
        self.total = String(sub)
        
    }
    
    var body: some View {
        Form{
            Section(header: Text("Informe 2 numeros")){
                TextField("valor 1", text: $valor1)
                TextField("valor 2", text: $valor2)
            }
            
            Text("\(total)")
            Button(action: self.calcular) {
                Text("Calcular")
            }
        }
    }
}

struct Exercicio10_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio10()
    }
}
