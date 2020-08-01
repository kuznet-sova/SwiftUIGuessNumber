//
//  SliderView.swift
//  SwiftUIGuessNumber
//
//  Created by Ирина Кузнецова on 31.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    @Binding var alpha: CGFloat
    
    var body: some View {
        HStack {
            Text("0")
            UiKitSlider(value: $value, alpha: $alpha)
            Text("100")
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(100), alpha: .constant(0.3))
    }
}
