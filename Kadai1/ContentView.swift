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
    @State var number3:Int = 0
    @State var number4:Int = 0
    @State var number5:Int = 0
    @State var result = "Label"


    var body: some View {
        HStack{
            VStack(alignment : .leading) {
                TextField("", value: $number1, formatter: NumberFormatter())
                    .font(.title)
                    .frame(height:40)
                    .frame(width: 100)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())


                TextField("", value: $number2, formatter: NumberFormatter())
                    .font(.title)
                    .frame(height:40)
                    .frame(width: 100)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("", value: $number3, formatter: NumberFormatter())
                    .font(.title)
                    .frame(height:40)
                    .frame(width: 100)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("", value: $number4, formatter: NumberFormatter())
                    .font(.title)
                    .frame(height:40)
                    .frame(width: 100)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("", value: $number5, formatter: NumberFormatter())
                    .font(.title)
                    .frame(height:40)
                    .frame(width: 100)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())


                Button(action: {
                    result = String(number1 + number2 + number3 + number4 + number5)

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
