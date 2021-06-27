//
//  RowView.swift
//  NewListFeatures
//
//  Created by Steven Lipton on 6/24/21.
//

import SwiftUI

struct RowView: View {
    @Binding var item:SFSymbol
    var body: some View {
        HStack{
            Image(systemName:item.symbolName)
                .font(.largeTitle)
                .padding(.trailing)
            VStack(alignment:.leading) {
                Text(item.description)
                Text("Id: **\(item.id)** ")
            }
            Spacer()
            Image(systemName: (item.isSelected ? "checkmark.rectangle" : "rectangle"))
                .onTapGesture {
                    item.isSelected.toggle()
                }
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(item: .constant(SFSymbols().symbols[12]))
    }
}
