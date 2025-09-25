//
//  TestGlassUi.swift
//  Liquid_Glass_UI
//
//  Created by Khant Phone Naing  on 25/09/2025.
//

import SwiftUI

struct CombineGlassUi: View {
    @Namespace var nameSpace
    @State var testId = 2
    @State var testToggle: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                GlassEffectContainer {
                    HStack {
                        Image(systemName: "sun.max")
                            .font(.system(size: 32))
                            .frame(width: 100, height: 100)
                            .glassEffect(.clear)
                            .glassEffectUnion(id: 1, namespace: nameSpace)
                        Image(systemName: "cloud.bolt.rain.fill")
                            .font(.system(size: 32))
                            .frame(width: 100, height: 100)
                            .glassEffect(.clear)
                            .glassEffectUnion(id: testId, namespace: nameSpace)
                    }
                    .glassEffectTransition(.matchedGeometry)
                    Button {} label: {
                        Image(systemName: testToggle ? "xmark" : "plus")
                            .font(.system(size: 32))
                            .frame(width: 100, height: 100)
                            .contentTransition(.symbolEffect)
                            .glassEffect(.regular.interactive())
                            .onTapGesture {
                                withAnimation(.linear(duration: 2)) {
                                    testToggle.toggle()
                                    testToggle ? (testId = 1) : (testId = 2)
                                }
                            }
                    }
                    .buttonStyle(.plain)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                ScrollView([.horizontal, .vertical]) {
                    Image("mountain")
                }
            )
            .navigationTitle("Test")
        }
    }
}

#Preview {
    CombineGlassUi()
}
