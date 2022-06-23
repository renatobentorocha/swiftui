//
//  IdentificationView.swift
//  MasmasCryptoMobile (iOS)
//
//  Created by Renato  Rocha on 21/06/22.
//

import SwiftUI

struct IdentificationView: View {
    @AppStorage(ONBOARDING_KEY) var passedOnboarding = false
    
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
                    SignInButton()
                    SignInButton()
                }
                .frame(width: geometry.size.width - 24)
                .background(Color("#161C22"))
                .cornerRadius(12)
                
                SignInView(geometry: geometry)
                
            }
            .frame(width: geometry.size.width)
            .background(Color("BackgroundColor"))
        }
    }
}

struct SignInButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Sign in")
                .foregroundColor(.white)
        }
        .frame(width: 179, height: 36)
        .background(Color("BackgroundColor"))
        .cornerRadius(12)
        .padding(4)
    }
}

struct SignInView: View {
    var geometry: GeometryProxy
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Text("Sign in")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .frame(width: geometry.size.width - 24)
    }
}

struct IdentificationView_Previews: PreviewProvider {
    static var previews: some View {
        IdentificationView()
    }
}
