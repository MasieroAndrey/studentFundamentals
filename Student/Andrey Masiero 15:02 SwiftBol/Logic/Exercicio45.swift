//
//  Exercicio45.swift
//  SwiftBol
//
//  Created by amasiero on 15/02/21.
//

import SwiftUI

struct Exercicio45: View {
    @State private var salary = String()
    @State private var commission = "0"
    
    
    var calcCommission:Double{
        var valueCommission = Double()
        let commissionConver = Double(commission) ?? 0
        var totalSalary = Double(salary) ?? 0
        
        commissionConver >= 1500 ? (valueCommission = commissionConver * 0.05) : (valueCommission = commissionConver * 0.03)
        totalSalary += valueCommission
        return totalSalary
    }
    
    
    
    var body: some View {
        Form{
            Section(header: Text("Insira um numero")){
                TextField("Informe seu salario", text: $salary)
                TextField("Informe o total de vendas", text: $commission)
            }
            Text("\(calcCommission, specifier: "%.2f")")
        }
    }
}

struct Exercicio45_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio45()
    }
}
