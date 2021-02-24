//
//  Exercico76.swift
//  SwiftBol
//
//  Created by amasiero on 15/02/21.
//

import SwiftUI

struct Exercicio76: View {
    @State private var number = String()
    @State private var totalSoma = Int()
    @State private var listNumbers = [Int]()
    
    func add()  {
        let convertNumber = Int(number) ?? 0
        listNumbers.append(convertNumber)
        number = ""
    }
    
    func calcMediaPonderada() {
        for item in listNumbers {
            totalSoma += item
        }
        
    }
    
    var body: some View {
        Form{
            Section(header: Text("Digite um numero")){
                HStack(spacing: 50 ){
                    TextField("Digite um numero", text: $number)
                }
                
                
                HStack(spacing: 50 ){
                    Button(action: self.add) {
                        Text("Adicionar Numero")
                    }
                }
            }
            
            
            HStack(spacing: 50 ){
                Button(action: self.calcMediaPonderada) {
                    Text("Calcular Soma")
                }
                Text("\(totalSoma)")
            }
            
            
        }
    }
}

struct Exercicio76_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio76()
    }
}
