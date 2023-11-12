//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by LinkedIn User on 11/14/22.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Margherita Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding(.leading)
                    .frame(minWidth:150,maxWidth:1000,maxHeight:300)
                    .background(.linearGradient(colors: [Color("Surf"),Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in:Capsule())
                
                if let image = UIImage(named: "0_lg"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                    //                    .clipShape(RoundedRectangle(cornerRadius:10))
                        .cornerRadius(10)
                        .shadow(color:.teal,radius: 5,x:8,y:8)
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                }
                
            }
            VStack(alignment: .leading) {
                
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fermentum porta est, non maximus libero varius in. Nullam quis risus sed lectus elementum elementum. Nullam sit amet mi vel odio sollicitudin commodo. Mauris fermentum nibh magna, ut blandit velit malesuada quis. Mauris scelerisque dictum mi nec molestie. Vivamus in semper.")
                        .font(.custom("Georgia",size: 18,relativeTo: .body))
                }
                
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
