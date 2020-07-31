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
    
    var body: some View {
        VStack {
            Text("Подвинь слайдер, как можно ближе к: \(lround(randomValue))")  
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
