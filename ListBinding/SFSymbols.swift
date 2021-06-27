//
//  SFSymbols.swift
//  NewListFeatures
//
//  Created by Steven Lipton on 6/23/21.
//

import Foundation

let sfSymbols:[String] = ["airplane","car","bus","tram","cablecar","ferry","bicycle","pencil","highlighter","lasso","trash","folder","paperplane","tray","externaldrive","archivebox","doc","note","calendar","book","magazine","newspaper","graduationcap","ticket","paperclip","umbrella","flag","bell","tag","eyeglasses","facemask","camera","gear","dice","paintbrush","bandage","wrench","hammer","guitars","paintpalette"]

struct SFSymbol:Identifiable,Equatable{
    var id:Int
    var symbolName:String
    var isSelected:Bool = false
    var description:String{
        return symbolName.localizedCapitalized
    }
}

class SFSymbols{
    var symbols:[SFSymbol] = []
    init(){
        for index in  0..<sfSymbols.count{
            self.symbols += [SFSymbol(id: index, symbolName: sfSymbols[index])]
        }
    }
}
