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
            
            
            Text("Huli Pizza Company")
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Order Pizza")
                .font(.title)
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
