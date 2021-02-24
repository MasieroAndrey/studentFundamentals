//
//  Exercicio88.swift
//  SwiftBol
//
//  Created by amasiero on 16/02/21.
//

import SwiftUI

struct Exercicio88: View {
    @State private var listNames = [String]()
    @State private var name = String()
    @State private var seachName = String()
    @State private var msg = "Aguardando"
    
    func addNomes() {
        listNames.append(name)
        name = ""
    }
    func searchNames() {
        msg = "Nome nao encontrado"
        for item in listNames {
            if item == seachName {
                msg = "Nome \(item) foi encontrado"
            }
        }
    }
    
    
    var body: some View {
        Form{
            
            Section(header: Text("Inserir Nome")){
                TextField("Insira um Nome", text: $name)
                Button(action: addNomes, label: {
                    Text("Adicionar")
                })
            }
            Section(header: Text("Pesquisar Nome")){
                TextField("Pesquisar um Nome", text: $seachName)
                Button(action: searchNames, label: {
                    Text("Procurar")
                })
            }
            
            Text("\(msg)")
        }
    }
}

struct Exercicio88_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio88()
    }
}
