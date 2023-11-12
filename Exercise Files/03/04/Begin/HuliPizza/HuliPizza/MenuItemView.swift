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
            if let image = UIImage(named: "0_lg"){
                Image(uiImage: image)
//                    .clipShape(RoundedRectangle(cornerRadius:10))
                    .cornerRadius(10)
            } else {
                Image("surfboard_lg")
            }
            Text("Margherita")
            Text("Description")
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
