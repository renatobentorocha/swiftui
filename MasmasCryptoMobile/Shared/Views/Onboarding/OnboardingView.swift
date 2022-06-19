//
//  OnboardingView.swift
//  MasmasCryptoMobile
//
//  Created by Renato  Rocha on 18/06/22.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentPage: Int = 0
    
    var pages = [
        StepView(image: "StepOne"),
        StepView(image: "StepTwo"),
        StepView(image: "StepThree")
    ];
    
    var headline = [
        "Trade anytime anywhere",
        "Save and invest at the same time",
        "Transact fast and easy"
    ]
    
    var subheadline = [
        "1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.",
        "2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.",
        "3 - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore."
    ]
    
    var body: some View {
        ZStack {
            Image("Splash Screen - Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                PageView(pages: pages, currentPage: $currentPage)
                Text(headline[currentPage])
                    .foregroundColor(Color.white)
                    .font(.headline)
                
                Text(subheadline[currentPage])
                    .foregroundColor(Color.gray)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button {
                    if currentPage < pages.count - 1 {
                        currentPage += 1
                    } else {
                        currentPage = 0
                    }
                    
                } label: {
                    Text("Next")
                        .foregroundColor(Color.white)
                }
                .frame(width: 180, height: 54, alignment: .center)
                .background(Color("OnboargingColor"))
                .cornerRadius(16)

            }
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
