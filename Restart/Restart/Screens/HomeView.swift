//
//  HomeView.swift
//  Restart
//
//  Created by Renato  Rocha on 01/07/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            Button {
                isOnboardingViewActive.toggle()
            } label: {
                Text("RESTART")
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
