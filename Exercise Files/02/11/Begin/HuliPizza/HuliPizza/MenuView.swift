//
//  MenuView.swift
//  HuliPizza
//
//  Created by LinkedIn User on 11/14/22.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView{
            ForEach(1...25,id:\.self){ item in
                
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
