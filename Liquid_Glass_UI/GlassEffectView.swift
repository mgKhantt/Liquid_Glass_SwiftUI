//
//  GlassEffectView.swift
//  Liquid_Glass_UI
//
//  Created by Khant Phone Naing  on 24/09/2025.
//

import SwiftUI

struct GlassEffectView: View {
    
    @State private var spacing = 0.0
    
    var body: some View {
        NavigationStack {
            Slider(value: $spacing, in: 0...90)
                .padding()
            GlassEffectContainer(spacing: spacing) {
                VStack {
                    Text("Hello World")
                        .font(.largeTitle)
                        .padding()
                        .glassEffect(.clear)
                    
                    Image(systemName: "applelogo")
                        .font(.system(size: 36))
                        .frame(width: 80, height: 80)
                        .glassEffect(.clear)
                    Image(systemName: "applelogo")
                        .font(.system(size: 36))
                        .frame(width: 80, height: 80)
                        .glassEffect(.regular.interactive())
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    ScrollView([.horizontal, .vertical]) {
                        Image("mountain")
                    }
                )
                .navigationTitle("Glas Effect")
            }
        }
    }
}

#Preview {
    GlassEffectView()
}
