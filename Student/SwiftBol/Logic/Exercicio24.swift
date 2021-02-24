//
//  Exercicio24.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

import SwiftUI

struct Exercicio24: View {
    @State private var nota = String()
    @State private var peso = String()
    @State private var totalNota = String()
    
    @State private var listNotas = [Double]()
    @State private var totalNotas = Double()
    @State private var totalPesos = Double()
    
    func add()  {
        let note = Double(nota) ?? 0
        let weight = Double(peso) ?? 0
        let calcNota = note * weight
        listNotas.append(calcNota)
        totalPesos += weight
        nota = ""
        peso = ""
        
    }
    
    func calcMediaPonderada() {
        totalNotas = Double(totalNota) ?? 0
        
        for item in listNotas {
            totalNotas += item
        }
        print(totalNota)
        print(totalNotas)
        print(totalPesos)
        totalNota = String(totalNotas/totalPesos)
        nota = ""
        peso = ""
        
    }
    var body: some View {
        
        Form{
            Section(header: Text("Informaçoes")){
                HStack(spacing: 50 ){
                    TextField("Digite sua nota", text: $nota)
                    TextField("Digite o peso", text: $peso)
                }
                
                
                HStack(spacing: 50 ){
                    Button(action: self.add) {
                        Text("Adicionar Nota")
                    }
                }
            }
            
            Section(header: Text("Informaçoes")){
                HStack(spacing: 50 ){
                    Button(action: self.calcMediaPonderada) {
                        Text("Calcular Media")
                    }
                    Text("\(totalNota)")
                }
            }
            
        }
    }
}


struct Exercicio24_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio24()
    }
}

