//
//  ContentView.swift
//  Shared
//
//  Created by Renato  Rocha on 18/06/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage(ONBOARDING_KEY) var passedOnboarding = false
    
    var body: some View {
        if passedOnboarding {
            IdentificationView()
                .transition(.scale)
        } else {
            OnboardingView()
                .transition(.scale)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
