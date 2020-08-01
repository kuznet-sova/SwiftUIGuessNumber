//
//  ContentView.swift
//  SwiftUIGuessNumber
//
//  Created by Ирина Кузнецова on 31.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var value: Double = 0
    @State var alpha: CGFloat = 1
    @State var randomValue = Double.random(in: 0...100)
    
    var body: some View {
        VStack {
            Text("Подвинь слайдер, как можно ближе к: \(lround(randomValue))")
            
            SliderView(value: $value, alpha: $alpha)
            
            Button(action: {
                self.value = Double.random(in: 0...100)
                self.randomValue = Double.random(in: 0...100)
            }) {
                Text("Начать заново")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(value: 100, alpha: 1)
    }
}
