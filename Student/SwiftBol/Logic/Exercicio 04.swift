//
//  Exercicio 04.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

import SwiftUI

struct Exercicio_04: View {
    @State private var nome: String = "Andrey Masiero"
    @State private var celular: String = "41 98820 9851"
   
    var body: some View {
        List{
        Text(nome)
        Text(celular)
        }
    }
}

struct Exercicio_04_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio_04()
    }
}
