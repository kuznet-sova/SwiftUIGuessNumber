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
    
    var body: some View {
        SliderView(value: $value, alpha: $alpha)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(value: 100, alpha: 1)
    }
}
