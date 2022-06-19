//
//  StepOne.swift
//  MasmasCryptoMobile
//
//  Created by Renato  Rocha on 18/06/22.
//

import SwiftUI

struct StepView: View {
    var image: String
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipped()
    }
}

struct StepOne_Previews: PreviewProvider {
    static var previews: some View {
        StepView(image: "StepOne")
            .previewLayout(.sizeThatFits)
    }
}
