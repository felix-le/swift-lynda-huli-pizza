//
//  MenuGridView.swift
//  HuliPizza
//
//  Created by LinkedIn User on 11/17/22.
//

import SwiftUI

struct MenuGridView: View {
    @State private var favorites:[Int] = [-1]
    
    func menu(id:Int)-> MenuItem{
        menu.first(where: {$0.id == id}) ?? noMenuItem
    }
    
    var menu:[MenuItem]
    @State var selectedItem:MenuItem = noMenuItem
    let columnLayout = Array(repeating: GridItem(), count: 3)
    let columnLayout2 = Array(repeating: GridItem(), count: 5)
    var body: some View {
        VStack{
            LazyVGrid(columns: columnLayout2){
                ForEach(favorites.sorted(),id:\.self) { item in
                    FavoriteTileView(menuItem: menu(id: item))
                        .onLongPressGesture {
                            if let index = favorites.firstIndex(where: {$0 == item}){
                                favorites.remove(at: index)
                            }
                        }
                }
            }
            Text(selectedItem.name)
            ScrollView {
                LazyVGrid(columns: columnLayout){
                    ForEach(menu){item in
                        if !favorites.contains(item.id){
                            MenuItemTileView(menuItem: item)
                                .onTapGesture(count:2) {
                                    if !favorites.contains(item.id){
                                        favorites.append(item.id)
                                    }
                                }
                                .onTapGesture {
                                    selectedItem = item
                                }
                                .onLongPressGesture {
                                    selectedItem = noMenuItem
                                }
                        }
                        
                    }
                }
            }
        }
    }
}

struct MenuGridView_Previews: PreviewProvider {
    static var previews: some View {
        MenuGridView(menu: MenuModel().menu)
    }
}
