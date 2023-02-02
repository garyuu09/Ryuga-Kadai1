//
//  ContentView.swift
//  Kadai1
//
//  Created by Ryuga on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    @State var number1:Int = 0
    @State var number2:Int = 0
    @State var result = "Label"


    var body: some View {
        VStack {
            TextField("", value: $number1, formatter: NumberFormatter())
                .font(.title)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("", value: $number2, formatter: NumberFormatter())
                .font(.title)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())


            Button(action: {
                result = String(number1 + number2)

                }){
                  Text("Button")
                }
            Text(result)


        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
