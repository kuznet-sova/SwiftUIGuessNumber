//
//  SliderView.swift
//  SwiftUIGuessNumber
//
//  Created by Ирина Кузнецова on 31.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @State private var randomValue = Double.random(in: 0...100)
    @Binding var value: Double
    @Binding var alpha: CGFloat
    
    var body: some View {
        VStack {
            Text("Подвинь слайдер, как можно ближе к: \(lround(randomValue))")
            
            HStack {
                Text("0")
                UiKitSlider(value: $value, alpha: $alpha)
                Text("100")
            }
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(100), alpha: .constant(0.3))
    }
}
