//
//  LandmarkList.swift
//  Landmarks (iOS)
//
//  Created by Renato  Rocha on 07/06/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landMark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
