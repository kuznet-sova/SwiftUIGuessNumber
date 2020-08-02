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
    @State private var randomValue = Double.random(in: 0...100)
    @State private var showAlert = false
    
    private var alpha: Double {
        Double(computeScore()) / 100
    }
    
    var body: some View {
        VStack {
            Text("Подвинь слайдер, как можно ближе к: \(lround(randomValue))")
            
            HStack {
                Text("0")
                UiKitSlider(value: $value)
                    .opacity(max(0, alpha))
                Text("100")
            }
            .padding()
            
            Button(action: {
                self.showAlert = true
            }) {
                Text("Проверить ответ")
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Ваш результат"),
                  message: Text("\(computeScore())"),
                  dismissButton: .cancel(Text("Ок")) {
                    self.showAlert = false
                })
            }
            . padding()
            
            Button(action: {
                self.value = Double.random(in: 0...100)
                self.randomValue = Double.random(in: 0...100)
            }) {
                Text("Начать заново")
            }
        }
    }
    
    private func computeScore() -> Int {
        let difference = abs(randomValue - value)
        return Int(100 - difference)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(value: 70)
    }
}
