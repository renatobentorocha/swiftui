//
//  ContentView.swift
//  Pinch
//
//  Created by Renato  Rocha on 13/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    @State private var imageTranslate: CGSize = .zero
    @State private var imageOffeset: CGSize = .zero
    
    func resetImageState() {
        return withAnimation {
            imageOffeset = .zero
            imageTranslate = .zero
            imageScale = 1
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.clear
                
                // MARK: Page image
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .animation(.linear(duration: 1), value: isAnimating)
                    .onAppear {
                        isAnimating.toggle()
                    }
                    .scaleEffect(imageScale)
                    .offset(imageTranslate)
                    .onTapGesture(count: 2) {
                        if imageScale <= 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        } else {
                            resetImageState()
                        }
                        
                    }
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                withAnimation {
                                    imageTranslate = CGSize(width: value.translation.width + imageOffeset.width, height: value.translation.height + imageOffeset.height)
                                }
                            }
                            .onEnded{ value in
                                withAnimation {
                                    imageOffeset = imageTranslate
                                }
                                
                                if imageScale <= 1 {
                                    resetImageState()
                                }
                            }
                    )
                    
            }
            .navigationTitle("Pinch && Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .overlay(
                InfoPainelView(scale: imageScale, offset: imageTranslate)
                    .padding(.horizontal)
                    .padding(.top, 30),
                alignment: .top
            )
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
    }
}
