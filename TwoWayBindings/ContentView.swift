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
    @State private var toggleIsOn = true
    @State private var name = ""
    @State private var selectedColour: Color = .red
    @State private var selectedDate = Date()
    @State private var stepperValue = 1
    @State private var sliderValue = 50.0
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Press count: \(pressCount)")
                
            Button("Press Me") {
                pressCount += 1
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            TextField("Enter a name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("Name entered: \(name)")
            
            Spacer()
            
            Toggle("Toggle is \(toggleIsOn ? "on" : "off"):", isOn: $toggleIsOn)
            
            Spacer()
            Rectangle()
                .fill(selectedColour)
                .frame(width: 100, height: 100)
            ColorPicker("Pick a Rectangle colour: ", selection: $selectedColour)
            
            Spacer()
            
            DatePicker("Date:", selection: $selectedDate)
            Text("Selected date is: \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
                .minimumScaleFactor(0.5)
            
            Spacer()
            
            Stepper("Stepper value: \(stepperValue)", value: $stepperValue, in: 1...10)
            
            Spacer()
            
            Slider(value: $sliderValue, in: 0...100) {
                // Accessibility label
                
            } minimumValueLabel: {
                Image(systemName: "speaker.minus")
                
            } maximumValueLabel: {
                Image(systemName: "speaker.plus")
                
            }
            Text("Slider value: \(Int(sliderValue))%")
//            Text("Slider value: \(sliderValue.formatted(.number.precision(.fractionLength(1))))")
//            Text("Slider value: \(String(format: "%.1f", sliderValue))")
            
            Spacer()
        }
        .font(.title2)
        .padding()
    }
}

#Preview {
    ContentView()
}
