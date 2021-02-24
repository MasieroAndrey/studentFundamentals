//
//  Exercicio30.swift
//  SwiftBol
//
//  Created by amasiero on 16/02/21.
//

import SwiftUI

struct Exercicio30: View {
    @State private var temp = String()
    
    var calcCelcius:Double{
        let number1 = Double(temp) ?? 0
        let fahrenheitTemp = number1 * 1.8 + 32
        return  fahrenheitTemp
    }
    
    
    
    var body: some View {
        Form{
            Section(header: Text("Insira um numero")){
                TextField("Insira um numero", text: $temp)
                
            }
            Text("\(calcCelcius, specifier: "%.2f")")
        }
    }
}

struct Exercicio30_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio30()
    }
}
