//
//  UiKitSlider.swift
//  SwiftUIGuessNumber
//
//  Created by Ирина Кузнецова on 01.08.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct UiKitSlider: UIViewRepresentable {
    @Binding var value: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = Float(value)
        slider.thumbTintColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        
        slider.addTarget(context.coordinator,
                         action: #selector(Coordinator.valueChanged),
                         for: .valueChanged)
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(value)
    }
    
    func makeCoordinator() -> UiKitSlider.Coordinator {
        Coordinator(value: $value)
    }
}

extension UiKitSlider {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            value = Double(sender.value)
        }
    }
}

struct UiKitSlider_Previews: PreviewProvider {
    static var previews: some View {
        UiKitSlider(value: .constant(100))
    }
}
