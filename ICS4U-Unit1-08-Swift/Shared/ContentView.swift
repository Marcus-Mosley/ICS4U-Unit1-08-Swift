//
// ContentView.swift
// ICS4U-Unit1-08-Swift
//
// Created by Marcus A. Mosley on 2021-01-25
// Copyright (C) 2021 Marcus A. Mosley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var random: [Int] = Array(repeating: 0, count: 10)
    @State private var text: String = " "
    @State private var min: Int = 0
    @State private var max: Int = 0
    private var randomNumber = 0
    
    var body: some View {
        VStack {
            Text("The Random Numbers are:\(text)")
                .font(.body)
            Text("The Min is \(String(min)) and the Max is \(String(max)).")
                .font(.body)
            Button("Start", action: {
                text = " "
                for counter in 0...9 {
                    random[counter] = Int.random(in: 1...99)
                    text += String(random[counter]) + ", "
                }
                min = minArray(random)
                max = maxArray(random)
            })
            .padding()
        }
    }
    
    // Calcuates the min value of the array
    func minArray(_ random: [Int]) -> Int {
        var counter: Int = 0
        var min = random[0]
        
        for counter in 0...random.count - 1 {
            if random[counter] < min {
                min = random[counter]
            }
        }
        return min
        
    }
    
    // Calculates the max value of the array
    func maxArray(_ random: [Int]) -> Int {
        var counter: Int = 0
        var max = random[0]
        
        for counter in 0...random.count - 1 {
            if random[counter] > max {
                max = random[counter]
            }
        }
        return max
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
