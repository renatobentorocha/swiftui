//
//  PageView.swift
//  MasmasCryptoMobile
//
//  Created by Renato  Rocha on 19/06/22.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @Binding var currentPage: Int
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
                .aspectRatio(2/3, contentMode: .fit)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: [
            StepView(image: "StepOne"),
            StepView(image: "StepTwo"),
            StepView(image: "StepThree")
        ], currentPage: .constant(0))
    }
}
