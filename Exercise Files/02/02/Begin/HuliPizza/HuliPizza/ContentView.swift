//
//  ContentView.swift
//  HuliPizza
//
//  Created by LinkedIn User on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            
            
            ZStack {
                Image("surfBanner")
                    .resizable()
                .scaledToFit()
                Text("Huli Pizza Company")
                    .background()
            }
            Text("Order Pizza")
                .font(.title)
            HStack(alignment:.firstTextBaseline){
                Text("Your Order item")
                Spacer()
                Text("$00.00")
            }
            HStack(alignment:.top,spacing:15) {
                Image("0_sm")
                Text("Margherita")
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
