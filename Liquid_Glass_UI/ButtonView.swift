//
//  ButtonView.swift
//  Liquid_Glass_UI
//
//  Created by Khant Phone Naing  on 24/09/2025.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("Pre Liquid Glass"){
                    LabeledContent("None") {
                        
                    }
                    LabeledContent("Borderless") {
                        
                    }
                    LabeledContent("Plain") {
                        
                    }
                    LabeledContent("Bordered") {
                        
                    }
                    LabeledContent("Bordered Prominent") {
                        
                    }
                }
                Section("Liquid Glass") {
                    LabeledContent("Glass") {
                        
                    }
                    LabeledContent("Glass Prominent") {
                        
                    }
                }
            }
            .navigationTitle("Buttons")
        }
    }
}

#Preview {
    ButtonView()
}
