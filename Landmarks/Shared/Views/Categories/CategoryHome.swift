//
//  CategoryHome.swift
//  Landmarks (iOS)
//
//  Created by Renato  Rocha on 14/06/22.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                Text("")
            } label: {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Featured")
        }
        
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .previewLayout(.sizeThatFits)
    }
}