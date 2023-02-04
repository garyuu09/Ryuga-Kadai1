//
//  ContentView.swift
//  Kadai1
//
//  Created by Ryuga on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    @State var number1:String = ""
    @State var number2:String = ""
    @State var number3:String = ""
    @State var number4:String = ""
    @State var number5:String = ""
    @State var result = "Label"


    var body: some View {
        HStack{
            VStack(alignment : .leading) {

                TextField("", text: $number1)
                    .customTextFieldStyle()

                TextField("", text: $number2)
                    .customTextFieldStyle()

                TextField("", text: $number3)
                    .customTextFieldStyle()

                TextField("", text: $number4)
                    .customTextFieldStyle()

                TextField("", text: $number5)
                    .customTextFieldStyle()

                Button(action: {
                    let num1 = Int(number1) ?? 0
                    let num2 = Int(number2) ?? 0
                    let num3 = Int(number3) ?? 0
                    let num4 = Int(number4) ?? 0
                    let num5 = Int(number5) ?? 0

                    result = String(num1 + num2 + num3 + num4 + num5)
                }){
                    Text("Button")
                        .font(.title)
                }
                Text(result)
                    .font(.title)
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

extension TextField {
    func customTextFieldStyle() -> some View {
        self
            .font(.title)
            .frame(width:100, height:40)
            .keyboardType(.numberPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
