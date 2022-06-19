//
//  PageView.swift
//  Landmarks (iOS)
//
//  Created by Renato  Rocha on 16/06/22.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        PageViewController(pages: pages, currentPage: $currentPage)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map {
            FeatureCard(landmark: $0)
                .aspectRatio(3/2, contentMode: .fit)
        })
        .previewLayout(.sizeThatFits)
    }
}
