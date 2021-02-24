//
//  Exercicio06.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

import SwiftUI

struct Exercicio06: View {
     @State private var nome = String()
    @State private var celular = String()
    @State private var cidade = String()
    var body: some View {
        Form{
            Section(header: Text("Informaçoes do Usuario")){
                TextField("Nome", text: $nome)
                TextField("celular", text: $celular)
                TextField("cidade", text: $cidade)
            }
            Section(header: Text("Informaçoes do Usuario")){
                Text("\(nome)")
                Text("\(celular)")
                Text("\(cidade)")
            }
        }
    }
}

struct Exercicio06_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio06()
    }
}
