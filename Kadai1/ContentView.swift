//
//  ContentView.swift
//  Kadai1
//
//  Created by nobu0621 on 2024/07/06.
//

import SwiftUI

struct ContentView: View {
    @State private var inputNumber1: String  = ""
    @State private var inputNumber2: String  = ""
    @State private var inputNumber3: String  = ""
    @State private var inputNumber4: String  = ""
    @State private var inputNumber5: String  = ""
    @State private var totalNumber: String = "Label"

    var body: some View {
        VStack {
            TextField("数字を入力してください", text: $inputNumber1).textFieldStyle(.roundedBorder)
            TextField("数字を入力してください", text: $inputNumber2).textFieldStyle(.roundedBorder)
            TextField("数字を入力してください", text: $inputNumber3).textFieldStyle(.roundedBorder)
            TextField("数字を入力してください", text: $inputNumber4).textFieldStyle(.roundedBorder)
            TextField("数字を入力してください", text: $inputNumber5).textFieldStyle(.roundedBorder)
            HStack {
                Button("Button") {
                    let number1 = Int(inputNumber1) ?? 0
                    let number2 = Int(inputNumber2) ?? 0
                    let number3 = Int(inputNumber3) ?? 0
                    let number4 = Int(inputNumber4) ?? 0
                    let number5 = Int(inputNumber5) ?? 0

                    totalNumber = String(number1 + number2 + number3 + number4 + number5)
                }
                Spacer()
            }
            HStack {
                // Labelにはタイトルだけ表示
                Label(totalNumber, systemImage: "bolt.fill")
                    .labelStyle(.titleOnly)
                Spacer()
            }
        }
        .padding()
        Spacer()
    }
}

#Preview {
    ContentView()
}
