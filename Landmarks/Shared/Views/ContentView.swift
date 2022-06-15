//
//  ContentView.swift
//  Shared
//
//  Created by Renato  Rocha on 06/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11"], id: \.self) { device in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: device)
                )
                .previewDisplayName(device)
                .environmentObject(ModelData())
        }
        
    }
}
