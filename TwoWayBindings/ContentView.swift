//
//  ContentView.swift
//  TwoWayBindings
//
//  Created by app-kaihatsusha on 30/12/2025.
//  Copyright © 2025 app-kaihatsusha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var pressCount = 0
    
    var body: some View {
        VStack {
            Text("Press count: \(pressCount)")
                
            Button("Press Me") {
                pressCount += 1
            }
            .buttonStyle(.borderedProminent)
        }
        .font(.title2)
       
    }
}

#Preview {
    ContentView()
}
