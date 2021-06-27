//
//  SymbolView.swift
//  NewListFeatures
//
//  Created by Steven Lipton on 6/23/21.
//

import SwiftUI

struct SymbolView: View {
    @Binding var model:[SFSymbol]
    let columns = Array(repeating: GridItem(spacing:5), count: 5)
    
    var body: some View {
        ScrollView{
            VStack{
                LazyVGrid(columns:columns, spacing:15){
                    ForEach(model){ item in
                       if item.isSelected{
                            Image(systemName: item.symbolName)
                               .font(.title2)
                       }
                    }
                }
                
            }
            .animation(.default)
        }
        
    }
}

struct SymbolView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolView(model:.constant(SFSymbols().symbols))
    }
}
