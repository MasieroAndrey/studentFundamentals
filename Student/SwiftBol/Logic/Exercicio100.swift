//
//  Exercicio100.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

import SwiftUI

struct Exercicio100: View {
    @State private var segunda = String()
    @State private var terca = String()
    @State private var quarta = String()
    @State private var quinta = String()
    @State private var sexta = String()
    @State private var sabado = String()
    @State private var domingo = String()
    @State private var menorTemp = Double()
    @State private var maiorTemp = Double()
    @State private var mediaTemp = Double()
    
    func calcTemperatura() {
        
        let temp1 = Double(segunda) ?? 0
        let temp2 = Double(terca) ?? 0
        let temp3 = Double(quarta) ?? 0
        let temp4 = Double(quinta) ?? 0
        let temp5 = Double(sexta) ?? 0
        let temp6 = Double(sabado) ?? 0
        let temp7 = Double(domingo) ?? 0
        
        var media = Double()
        
        var listaDiaTemperatura = [temp1, temp2, temp3, temp4, temp5, temp6, temp7]
        listaDiaTemperatura.sort()
        menorTemp = listaDiaTemperatura[0]
        maiorTemp = listaDiaTemperatura[6]
        
        for item in listaDiaTemperatura {
            media += item
        }
        media /= 7
        mediaTemp = media
    }
    
    var body: some View {
        Form{
            Section(header: Text("Digite a temperatura")){
                HStack(spacing: 50){
                    TextField("Segunda Feira", text: $segunda)
                    TextField("Terça Feira", text: $terca)
                }
                
                HStack(spacing: 50){
                    TextField("Quarta Feira", text: $quarta)
                    TextField("Quinta Feira", text: $quinta)
                }
                
                HStack(alignment: .center, spacing: 50){
                    TextField("Sexta Feira", text: $sexta)
                    TextField("Sabado", text: $sabado)
                }
                HStack(alignment: .center){
                    TextField("Domingo", text: $domingo)
                }
                
            }
            Section(header: Text("A sua menor temperatura da semana")){
                Text("\(menorTemp ,specifier: "%.2f")")
            }
            Section(header: Text("A sua maior temperatura da semana")){
                Text("\(maiorTemp ,specifier: "%.2f")")
            }
            Section(header: Text("A sua temperatura media da semana")){
                Text("\(mediaTemp ,specifier: "%.2f")")
            }
            Button(action: self.calcTemperatura) {
                Text("Calcular Media").foregroundColor(.black)
            }
            
        }
    }
}


struct Exercicio100_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio100()
    }
}


//Faça um programa para ler e armazenar em um vetor a temperatura média de todos os dias da semana. Calcular e escrever:
//a) A menor temperatura da semana
//b) A maior temperatura da semana
//c) Temperatura média semanal
//d) O número de dias na semana em que a temperatura
//foi inferior à média semanal.
