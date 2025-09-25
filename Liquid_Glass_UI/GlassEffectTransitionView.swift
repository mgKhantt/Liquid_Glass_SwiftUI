//
//  GlassEffectTransitionView.swift
//  Liquid_Glass_UI
//
//  Created by Khant Phone Naing  on 25/09/2025.
//

import SwiftUI

struct GlassEffectTransitionView: View {
    @State private var isExpanded = false
    @Namespace private var namespace
    
    @State private var text: String = ""
    @Namespace private var nameSpaceText
    
    var body: some View {
        NavigationStack {
            VStack {
                GlassEffectContainer {
                    HStack {
                        Image(systemName: "photo")
                            .font(.system(size: 32))
                            .frame(width: 80, height: 80)
                            .glassEffect(.regular.tint(.blue.opacity(0.5)).interactive())
                            .onTapGesture {
                                withAnimation(.linear(duration: 2)) {
                                    isExpanded.toggle()
                                }
                            }
                            .glassEffectID("photo", in: namespace)
                        if isExpanded {
                            Group {
                                Image(systemName: "building.2")
                                    .font(.system(size: 32))
                                    .frame(width: 80, height: 80)
                                    .glassEffectID("building", in: namespace)
                                Image(systemName: "fish")
                                    .font(.system(size: 32))
                                    .frame(width: 80, height: 80)
                                    .glassEffectID("fish", in: namespace)
                            }
                            .glassEffect()
                            .glassEffectUnion(id: 1, namespace: namespace)
                            .glassEffectTransition(.matchedGeometry)
                        }
                    }
                    HStack {
                        if isExpanded {
                            TextField("Enter name", text: $text)
                                .padding()
                                .glassEffect()
                                .glassEffectID("text", in: nameSpaceText)
                                .glassEffectTransition(.matchedGeometry)
                        }
                        Image(systemName: isExpanded ? "checkmark" : "plus")
                            .font(.system(size: 36))
                            .frame(width: 80, height: 80)
                            .contentTransition(.symbolEffect)
                            .glassEffect(.regular.interactive())
                            .glassEffectID("plus", in: nameSpaceText)
                            .onTapGesture {
                                withAnimation(.linear(duration: 2)) {
                                    isExpanded.toggle()
                                }
                            }
                    }
                    .padding()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                ScrollView([.horizontal, .vertical]) {
                    Image("mountain")
                }
            )
            .navigationTitle("Glass Effect Transition")
        }
    }
}

#Preview {
    GlassEffectTransitionView()
}
