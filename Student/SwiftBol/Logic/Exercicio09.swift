//
//  Exercicio09.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

import SwiftUI

struct Exercicio09: View {
    
    @State private var valor1 = "0"
    @State private var valor2 = "0"
    @State private var total = "0"
    var soma:Int{
        let number1 = Int(valor1) ?? 0
        let number2 = Int(valor2) ?? 0
        let operador = number1 + number2
        return operador
    }
    
    var body: some View {
        Form{
            Section(header: Text("Informaçoes do Usuario")){
                TextField("valor 1", text: $valor1)
                TextField("valor 2", text: $valor2)
                
            }
            Section(header: Text("Informaçoes do Usuario")){
                Text("\(soma)")
            }
        }
    }
}


struct Exercicio09_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio09()
    }
}
