//
//  LoginView.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-15.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var isFormValid: Bool {
        return !email.isEmpty && !password.isEmpty && email.isValidEmail
    }
    
    var body: some View {
        Form {
            TextField("Email", text:$email)
                .textInputAutocapitalization(.never)
            SecureField("Password", text:$password)
            Button("Login") {
                
            }.disabled(!isFormValid)
        }
    }
}

#Preview {
    LoginView()
}

