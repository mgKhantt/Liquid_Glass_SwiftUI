//
//  ButtonView.swift
//  Liquid_Glass_UI
//
//  Created by Khant Phone Naing  on 24/09/2025.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var removeBackground: Bool = false
    
    var body: some View {
        NavigationStack {
            Toggle("Remove Background", isOn: $removeBackground)
                .padding()
            
            Form {
                Group {
                    Section("Pre Liquid Glass"){
                        LabeledContent("None") {
                            Button("Label") {
                                
                            }
                        }
                        LabeledContent("Borderless") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.borderless)
                        }
                        LabeledContent("Plain") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.plain)
                        }
                        LabeledContent("Bordered") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.bordered)
                        }
                        LabeledContent("Bordered Prominent") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.borderedProminent)
                        }
                    }
                    Section("Liquid Glass") {
                        LabeledContent("Glass") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.glass)
                        }
                        LabeledContent("Glass Prominent") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.glassProminent)
                        }
                    }
                }
                .listRowBackground(removeBackground ? Color.clear : Color(.systemBackground))
            }
            .navigationTitle("Buttons")
        }
    }
}

#Preview {
    ButtonView()
}
