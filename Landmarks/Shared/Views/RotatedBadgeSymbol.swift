//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Renato  Rocha on 10/06/22.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    var angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
            .previewLayout(.sizeThatFits)
    }
}
