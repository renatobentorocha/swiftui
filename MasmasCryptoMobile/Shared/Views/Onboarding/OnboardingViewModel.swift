//
//  OnboardingViewModel.swift
//  MasmasCryptoMobile
//
//  Created by Renato  Rocha on 19/06/22.
//

import Foundation

extension OnboardingView {
    class ViewModel: ObservableObject {
        @Published var currentPage: Int = 0
        
        private var model = OnboardingModel()
        
        var pages: [String] {
            model.pages
        }
        
        var headline: [String] {
            model.headline
        }
        
        var subheadline: [String] {
            model.subheadline
        }
        
        func nextPage() -> Void {
            if currentPage < model.pages.count - 1 {
               currentPage += 1
            } else {
                currentPage = 0
            }
        }
    }
}
