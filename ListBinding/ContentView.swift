//
//  ContentView.swift
//  ListBinding
//
//  Created by Steven Lipton on 6/25/21.
//

import SwiftUI

struct ContentView: View {
    @State var model:[SFSymbol] = SFSymbols().symbols
    @State var selectedItem:String = "questionmark"
    @State var searchText:String = ""
    var body: some View {
        
        VStack {
            Text("Hello, Symbols!")
            SymbolView(model:$model)
            ListView(model: $model)
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
