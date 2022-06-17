//
//  PageViewController.swift
//  Landmarks (iOS)
//
//  Created by Renato  Rocha on 16/06/22.
//

import Foundation
import UIKit
import SwiftUI

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
    }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers(
            [UIHostingController(rootView: pages[0])],
            direction: .forward,
            animated: true
        )
    }
}
