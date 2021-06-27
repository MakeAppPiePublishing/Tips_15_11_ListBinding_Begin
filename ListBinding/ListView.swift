//
//  ListView.swift
//  NewListFeatures
//
//  Created by Steven Lipton on 6/23/21.
//

import SwiftUI

struct ListView: View {
    @Binding var model:[SFSymbol]
    var body: some View {
        ScrollView{
            VStack {
                ForEach(0..<model.count){ item in
                    RowView(item: $model[item])
                        .padding(5)
                    Divider()
                        
                }
            }
            .animation(.default,value:model)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(model:.constant(SFSymbols().symbols))
    }
}
