//
//  GlassEffectNameEffectView.swift
//  Liquid_Glass_UI
//
//  Created by Khant Phone Naing  on 25/09/2025.
//

import SwiftUI

struct GlassEffectNameSpaceView: View {
    @Namespace var nameSpace
    @Namespace var nameSpace2
    
    var body: some View {
        NavigationStack {
            VStack {
                GlassEffectContainer {
                    HStack {
                        Image(systemName: "cloud.bolt.rain.fill")
                            .font(.system(size: 36))
                            .frame(width: 80, height: 80)
                            .glassEffect()
                            .glassEffectUnion(id: 1, namespace: nameSpace)
                        Image(systemName: "sun.rain.fill")
                            .font(.system(size: 36))
                            .frame(width: 80, height: 80)
                            .glassEffect()
                            .glassEffectUnion(id: 1, namespace: nameSpace)
                        Group {
                            Image(systemName: "cloud.bolt.rain.fill")
                                .font(.system(size: 36))
                                .frame(width: 80, height: 80)
                                .glassEffect()
                            Image(systemName: "sun.rain.fill")
                                .font(.system(size: 36))
                                .frame(width: 80, height: 80)
                                .glassEffect()
                        }
                        .glassEffectUnion(id: 2, namespace: nameSpace)
                    }
                    HStack {
                        Button { } label: {
                            Image(systemName: "cloud.bolt.rain.fill")
                                .font(.system(size: 36))
                                .frame(width: 80, height: 80)
                        }
                            .glassEffect()
                        Button { } label: {
                            Image(systemName: "sun.rain.fill")
                                .font(.system(size: 36))
                                .frame(width: 80, height: 80)
                        }
                            .glassEffect()
                    }
                    .buttonStyle(.plain)
                    .glassEffectUnion(id: 1, namespace: nameSpace2)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                ScrollView([.horizontal, .vertical]) {
                    Image("mountain")
                }
            )
            .navigationTitle("Name Spaces")
        }
    }
}

#Preview {
    GlassEffectNameSpaceView()
}
