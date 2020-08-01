////
////  ButtonView.swift
////  SwiftUIGuessNumber
////
////  Created by Ирина Кузнецова on 31.07.2020.
////  Copyright © 2020 Irina Kuznetsova. All rights reserved.
////
//
//import SwiftUI
//
//struct ButtonView: View {
//    @State var buttonName: String
//    @Binding var randomValue: Double
//    @Binding var value: Double
//    @Binding var showAlert: Bool
//    
//    var body: some View {
//        Button(action: buttonPress) {
//            Text("\(buttonName)")
//        }
//    }
//    
//    private func buttonPress() {
//        switch buttonName {
//        case "Проверь меня":
//            showAlert = true
//        default:
//            value = 0
//            randomValue = Double.random(in: 0...100)
//        }
//    }
//}
//
//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView(buttonName: "Начать заново", randomValue: .constant(100), value: .constant(50), showAlert: .constant(false))
//    }
//}
