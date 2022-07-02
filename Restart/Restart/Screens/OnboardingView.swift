//
//  OnboardingView.swift
//  Restart
//
//  Created by Renato  Rocha on 01/07/22.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            Button {
                isOnboardingViewActive.toggle()
            } label: {
                Text("START")
            }

        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
