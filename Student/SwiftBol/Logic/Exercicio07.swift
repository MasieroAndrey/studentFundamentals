//
//  Exercicio07.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

import SwiftUI

struct Exercicio07: View {
    @State private var idade = String()
    @State private var altura = String()
    @State private var peso = String()
    var body: some View {
        Form{
            Section(header: Text("Informaçoes do Usuario")){
                TextField("Idade", text: $idade)
                TextField("altura", text: $altura)
                TextField("peso", text: $peso)
            }
        }
    }
}

struct Exercicio07_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio07()
    }
}
