//
//  Exercicio99.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

import SwiftUI

struct Exercicio99: View {
    @State private var listNumber = [2,4,6,8,10,12,2,16,2,20]
    @State private var number = String()
    @State private var numberFinded = String()
    @State private var quantasVezes = Int()
    
    
    
    func calcNumber() {
        let numberConvert = Int(number) ?? 0 //4
            //2 4
        for item in listNumber {
            if item == numberConvert {
                numberFinded = String(item)
                quantasVezes += 1
            }
        }
    }
    
    var body: some View {
        Form{
            Section(header: Text("Insira um numero")){
                List{
                    ForEach(listNumber, id: \.self){
                        numero in Text("\(numero)")
                    }
                }
                TextField("Insira um numero no array", text: $number)
            }
            
            Button(action: self.calcNumber) {
                Text("Mostrar numero encontrado").foregroundColor(.black)
            }
            
            Text("O numero encontrato é\(numberFinded)\n foi encontrado \(quantasVezes) vezes")
            
            
        }
    }
}

struct Exercicio99_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio99()
    }
}


