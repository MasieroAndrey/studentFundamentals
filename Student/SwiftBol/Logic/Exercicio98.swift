//
//  Exercicio98.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

import SwiftUI

struct Exercicio98: View {
    @State private var listUm = [0, 1, 6, 7, 12, 15, 63, 43, 55, 34, 33, 89, 67, 56, 91]
    @State private var listDois = [0, 2, 6, 7, 12, 15, 63, 5, 9, 34, 33, 89, 7, 56, 91]
    @State private var contador = Int()
    
    func count() {
        for item in 0...14 {
            if listUm[item] == listDois[item] {
                contador += 1
            }
        }
    }
    
    var body: some View {
        Form{
            Text("os Arrays possuem \(contador) numeros igual e em posiçoes iguais")
            Button(action: count, label: {
                Text("Mostrar")
            })
        }
    }
}

struct Exercicio98_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio98()
    }
}
