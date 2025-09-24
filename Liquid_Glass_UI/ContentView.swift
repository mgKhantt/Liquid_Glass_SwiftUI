//
//  ContentView.swift
//  Liquid_Glass_UI
//
//  Created by Khant Phone Naing  on 19/09/2025.
//

import SwiftUI

struct ContentView: View {
    
    
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
    ContentView()
}

