//
//  IdentificationView.swift
//  MasmasCryptoMobile (iOS)
//
//  Created by Renato  Rocha on 21/06/22.
//

import SwiftUI

enum IdenticationType {
    case signIn
    case signOut
}

struct IdentificationView: View {
    @AppStorage(ONBOARDING_KEY) var passedOnboarding = false
    @State private var identificationUsed: IdenticationType = .signIn
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                Button  {
                    passedOnboarding.toggle()
                } label: {
                    Text("Back to onboarding")
                        .foregroundColor(.white)
                        .font(.title)
                }
                
                HStack {
                    IdentificationButton(activated: identificationUsed == .signIn, title: "Sign in") {
                        identificationUsed = .signIn
                    }
                    IdentificationButton(activated: identificationUsed == .signOut, title: "Sign out") {
                        identificationUsed = .signOut
                    }
                }
                .frame(width: geometry.size.width - 24)
                .background(Color("#161C22"))
                .cornerRadius(12)
                
                SignInView()
                
            }
            .frame(width: geometry.size.width)
            .background(Color("BackgroundColor"))
        }
    }
}

struct IdentificationButton: View {
    var activated: Bool
    var title: String
    var click: () -> Void
    
    var body: some View {
        Button {
            click()
        } label: {
            Text(title)
                .foregroundColor(.white)
                .frame(width: 179, height: 36)
                
        }
        .frame(width: 179, height: 36)
        .background(activated ? Color("BackgroundColor") : nil)
        .animation(.default, value: activated)
        .cornerRadius(12)
        .padding(4)
    }
}

struct IdentificationView_Previews: PreviewProvider {
    static var previews: some View {
        IdentificationView()
    }
}
