//
//  OnboardingView.swift
//  MasmasCryptoMobile
//
//  Created by Renato  Rocha on 18/06/22.
//

import SwiftUI

struct OnboardingView: View {
    @ObservedObject private var vm = ViewModel()
    
    var body: some View {
        ZStack {
            Image("Splash Screen - Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                PageView(
                    pages: vm.pages.map { image in stepViewWith(image: image)},
                    currentPage: $vm.currentPage
                )
                Text(vm.headline[vm.currentPage])
                    .foregroundColor(Color.white)
                    .font(.headline)
                
                Text(vm.subheadline[vm.currentPage])
                    .foregroundColor(Color.gray)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button {
                    vm.nextPage()
                    
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

func stepViewWith(image: String) -> StepView {
    StepView(image: image)
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
