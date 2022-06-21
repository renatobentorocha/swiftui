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
    @State private var scale: CGFloat = 1.0
    @State private var viewId = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
                .aspectRatio(2/3, contentMode: .fit)
                .scaleEffect(scale)
                .modifier(ReversingScale(to: scale) {
                    DispatchQueue.main.async {
                        self.scale = 1.0
                    }
                })
                .animation(.easeOut, value: scale)
                .onChange(of: currentPage, perform: { newValue in
                    self.scale = 1.05
                })
                .onAppear {
                    self.scale = 1.05
                }
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
