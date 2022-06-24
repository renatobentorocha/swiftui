//
//  SignInView.swift
//  MasmasCryptoMobile (iOS)
//
//  Created by Renato  Rocha on 23/06/22.
//

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    
    var body: some View {
        VStack {
            Header()
            EmailWithEmail(text: $email) {
            }
            Spacer()
        }
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Text("Sign in")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            Spacer()
        }
    }
}

struct EmailWithEmail: View {
    @Binding var text: String
    var click: () -> Void
    
    
    var body: some View {
        VStack {
            HStack {
                Text("E-mail")
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Button("Sign in with mobile") {
                    click()
                }
                    .font(.headline)
                    .foregroundColor(Color("#5ED5A8"))
            }
            TextField("Enter your e-mail", text: $text)
                .frame(height: 54)
                .background(Color("#161C22"))
                .cornerRadius(12)
                .foregroundColor(Color("#777777"))
                .keyboardType(.emailAddress)
                
        }
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .background(Color("BackgroundColor"))
    }
}
