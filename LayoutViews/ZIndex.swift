//
//  ZIndex.swift
//  LayoutViews
//
//  Created by Macbook Air on 1.06.2021.
//

import SwiftUI

struct ZIndex: View {
    var body: some View {
        VStack(spacing:20){
            Text("ZIndex Örnek 1").font(.largeTitle)
            RoundedRectangle(cornerRadius: 20).fill(Color.red).padding(.horizontal,50).overlay(Text("Şekil 1")).zIndex(1)
            RoundedRectangle(cornerRadius: 20).fill(Color.green).padding(.horizontal,50).overlay(Text("Şekil 2")).scaleEffect(1.5).zIndex(2).overlay(
                GeometryReader{gr in
                    Text("Genişlik: \(Int(gr.size.width)) \nYükseklik: \(Int(gr.size.height))").foregroundColor(.white)
                }
            )
            RoundedRectangle(cornerRadius: 20).fill(Color.purple).padding(.horizontal,60).overlay(Text("Şekil 3"))
        }.font(.title)
    }
}

struct ZIndex_Previews: PreviewProvider {
    static var previews: some View {
        ZIndex()
    }
}
