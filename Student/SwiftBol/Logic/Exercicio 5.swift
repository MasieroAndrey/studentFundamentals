//
//  Exercicio 5.swift
//  SwiftBol
//
//  Created by amasiero on 12/02/21.
//

import SwiftUI

struct Exercicio_5: View {
    @State private var idade: Int = 24
    @State private var altura: Double = 1.80
    @State private var peso: Double = 110
    
    var body: some View {
        List{
            Text("\(idade)")
            Text("\(altura)")
            Text("\(peso)")
        }
    }
}

struct Exercicio_5_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio_5()
    }
}
