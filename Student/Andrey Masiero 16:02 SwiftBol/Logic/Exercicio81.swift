//
//  Exercicio81.swift
//  SwiftBol
//
//  Created by amasiero on 16/02/21.
//

import SwiftUI



struct Exercicio81: View {
    @State private var listNumbers = [Int]()
    @State private var numbers = String()
    
    
    func addNumbers() {
        let numberConvert = Int(numbers) ?? 0
        listNumbers.append(numberConvert)
        listNumbers.sort()
        numbers = ""
    }
    
    var body: some View {
        Form{
            Section(header: Text("Insira um numero")){
                TextField("Insira um numero", text: $numbers)
            }
            Button(action: addNumbers, label: {
                Text("Adicionar numnero")
            })
            List{
                ForEach(listNumbers, id: \.self){
                    numero in Text("\(numero)")
                }
            }
        }
    }
}

struct Exercicio81_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio81()
    }
}
