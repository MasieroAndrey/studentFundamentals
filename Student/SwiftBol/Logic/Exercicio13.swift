//
//  Exercicio13.swift
//  SwiftBol
//
//  Created by amasiero on 15/02/21.
//

import SwiftUI

struct Exercicio13: View {
    @State private var firstNumber = String()
    
    func showFactorial() {
        var firstNumberConvert = Int(firstNumber) ?? 0
        var result = 1
        while firstNumberConvert > 0 {
            result *= firstNumberConvert
            firstNumberConvert -= 1
        }
        firstNumber = String(result)
    }
   
    var body: some View {
        
        Form{
            Section(header: Text("Insira um numero")){
                TextField("Insira um numero", text: $firstNumber)
                
            }
            Button(action: showFactorial, label: {
                Text("Mostrar fatoração")
            })
            Text("\(firstNumber)")
        }
    }
}

struct Exercicio13_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio13()
    }
}
