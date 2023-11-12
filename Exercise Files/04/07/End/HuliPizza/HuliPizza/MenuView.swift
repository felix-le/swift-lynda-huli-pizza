//
//  MenuView.swift
//  HuliPizza
//
//  Created by LinkedIn User on 11/14/22.
//

import SwiftUI

struct MenuView: View {
    var menu:[MenuItem]
    var body: some View {
        ScrollView{
            ForEach(menu){ item in
                MenuRowView(item: item)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menu:MenuModel().menu)
    }
}
