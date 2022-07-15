//
//  ControlButtonView.swift
//  Pinch
//
//  Created by Renato  Rocha on 15/07/22.
//

import SwiftUI

struct ControlButtonView: View {
    var icon: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: icon)
                .font(.system(size: 36))
        }
    }
}

struct ControlButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ControlButtonView(icon: "minus.magnifyingglass") {
            // ACTION
        }
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.dark)
    }
}
