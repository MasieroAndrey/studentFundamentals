//
//  Exercicio60.swift
//  SwiftBol
//
//  Created by amasiero on 16/02/21.
//

import SwiftUI

struct Exercicio60: View {
    @State private var login = String()
    @State private var passwword = String()
    @State private var msg = String()
    @State private var showTextField = false
    
    func loginUser() {
        let userSistem = "Andreymasiero"
        if userSistem == login {
           showTextField = true
            msg = "Usuario Encontrado"
            
        }else{
            msg = "Usuario Invalido"
        }
        
    }
    
    func loginPassword() {
        let passwordSistem = "1234"
        
        if passwordSistem == passwword{
            msg = "Acesso Permitido"
        }else{
            msg = "Senha Incorreta"
        }
    }
    
    
    
    var body: some View {
        Form{
            Section(header: Text("Login")){
                
                
            }
            if showTextField  {
                TextField("Insira a senha", text: $passwword)
                Button(action: loginPassword, label: {
                    Text("Mostrar")
                })
            }else {
                TextField("Insira o usuario", text: $login)
                Button(action: loginUser, label: {
                    Text("Mostrar")
                })
                
            }
            
            Text("\(msg)")
        }
    }
}

struct Exercicio60_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio60()
    }
}

//Faça um programa para ler um número que é um có- digo de usuário. Caso este código seja diferente de um có- digo armazenado internamente no programa (igual a 1234) deve ser apresentada a mensagem ‘Usuário inválido!’. Ca- so o Código seja correto, deve ser lido outro valor que é a senha. Se esta senha estiver incorreta (a certa é 9999) deve ser mostrada a mensagem ‘senha incorreta’. Caso a senha esteja correta, deve ser mostrada a mensagem ‘Acesso permitido’.
