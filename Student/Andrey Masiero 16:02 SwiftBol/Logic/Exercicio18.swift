//
//  Exercicio13.swift
//  SwiftBol
//
//  Created by amasiero on 15/02/21.
//

import SwiftUI

struct Exercicio13: View {
    @State private var firstNumber = String()
    @State private var result = Double()
    
    func showNumber() {
        var firstNumberConvert = Double(firstNumber) ?? 0
        firstNumberConvert *= 6.61
        
        
        
        result = firstNumberConvert
    }
   
    var body: some View {
        
        Form{
            Section(header: Text("Insira um numero")){
                TextField("Insira um numero", text: $firstNumber)
                
            }
            Button(action: showNumber, label: {
                Text("Mostrar")
            })
            Text("\(result, specifier: "%.2f")")
        }
    }
}

struct Exercicio13_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio13()
    }
}
