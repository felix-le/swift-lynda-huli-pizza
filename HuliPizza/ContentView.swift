//
//  ContentView.swift
//  HuliPizza
//
//  Created by felix on 2023-11-11.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1,2,3,4,6,7,8,9,10,11,12,13,14,15,16,17]
    var body: some View {
        VStack {
            ZStack {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                Text("Huli Pizza Company")
                    .background()
            }
//            End hero banner
            Image(systemName: orders.isEmpty ? "cart":"cart.circle.fill")
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView{
                ForEach(orders, id: \.self) { order in
                    HStack(alignment: .firstTextBaseline) {
                        Text("Your Order Item \(order):")
                            .font(.headline)
                        Spacer()
                        Text(14.09, format: .currency(code: "USD"))
                    }
                }
            }
        
            
            
            VStack{
                Image(systemName: "rectangle.fill").font(.largeTitle)
                Text("Margherita")
                Text("Description")
            }
            
            ScrollView{
                ForEach(1...25, id: \.self) { item in
                    HStack (alignment: .top, spacing: 15) {
                        Image(systemName:"\(item).circle.fill").font(.largeTitle)
                            .font(.title)
                        VStack(alignment: .leading) {
                            Text("Margherita")
                            Text("Description")
                        }

                    }
                }
            }
          
     
            Spacer()
        }
            .padding()
    }
}

#Preview {
    ContentView()
}
