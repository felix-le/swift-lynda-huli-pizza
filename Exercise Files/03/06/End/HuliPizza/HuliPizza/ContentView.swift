//
//  ContentView.swift
//  HuliPizza
//
//  Created by LinkedIn User on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1,2,3,4,6]
    var showOrders:Bool = false
    var body: some View {
        VStack {
            
            HeaderView()
            if showOrders
            {
                OrderView(orders: orders)
                
            }
            else{
                MenuItemView()
                    .padding(5)
                    .background(Color("Sky"), in: RoundedRectangle(cornerRadius: 10))
                MenuView()
                
            }
            Spacer()
        }
        .padding()
        .background(.linearGradient(colors: [.cyan,Color("Surf"),Color("Sky"),.white], startPoint: .topLeading, endPoint: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

