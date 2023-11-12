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
            HStack {
                
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            HStack(alignment:.firstTextBaseline){
                Text("Your Order item")
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
            }
            HStack(alignment:.top,spacing:15) {
                Image("0_sm")
                VStack(alignment:.leading) {
                    Text("Margherita")
                    Text("Description")
                }
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
