//
//  OnboardingView.swift
//  MasmasCryptoMobile
//
//  Created by Renato  Rocha on 18/06/22.
//

import SwiftUI

struct OnboardingView: View {
    var subviews = [
            UIHostingController(rootView: StepView(image: "StepOne")),
            UIHostingController(rootView: StepView(image: "StepTwo")),
            UIHostingController(rootView: StepView(image: "StepThree"))
    ]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewLayout(.sizeThatFits)
    }
}
