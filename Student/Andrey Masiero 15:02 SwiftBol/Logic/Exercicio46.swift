//
//  Exercicio46.swift
//  SwiftBol
//
//  Created by amasiero on 15/02/21.
//

import SwiftUI

struct Exercicio46: View {
    @State private var account = String()
    @State private var balance = String()
    @State private var credit = String()
    @State private var debit = String()
    @State private var msgAccount = ""
    
    
    func calcBalanceAccount() {
        let converBalance = Double(balance) ?? 0
        let convertCredit = Double(credit) ?? 0
        let convertDebit = Double(debit) ?? 0
        var calcBalance = Double()
        calcBalance = converBalance - convertDebit + convertCredit
        
        calcBalance >= 0 ? (msgAccount = "Saldo Positivo") : (msgAccount = "Saldo Negativo")
        
    }
    
    var body: some View {
        Form{
            Section(header: Text("Insira um numero")){
                TextField("Informe o numero da sua conta", text: $account)
                TextField("Informe o seu total de credito", text: $credit)
                TextField("Informe o seu saldo", text: $balance)
                TextField("Informe o sua divida", text: $debit)
            }
            Button(action: calcBalanceAccount, label: {
                Text("Mostrar")
            })
            Text("\(msgAccount)")
        }
    }
}

struct Exercicio46_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio46()
    }
}
