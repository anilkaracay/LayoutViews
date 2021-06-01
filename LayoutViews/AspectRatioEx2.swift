//
//  AspectRatioEx2.swift
//  LayoutViews
//
//  Created by Macbook Air on 30.05.2021.
//

import SwiftUI

struct AspectRatioEx2: View {
    var body: some View {
        VStack(spacing:20){
            Text("Aspect Ratio Örnek 2").font(.largeTitle)
            Text("Farklı Cihazlar İçin Boyutlandırma").font(.title).foregroundColor(.gray)
            GeometryReader{ gr in
                RoundedRectangle(cornerRadius: 15).frame(width:gr.size.width/2).aspectRatio(1.5, contentMode: .fit).foregroundColor(.purple).overlay(Text("3:2 Aspect Ratio").foregroundColor(.white))
                
            }
        }
    }
}

struct AspectRatioEx2_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            AspectRatioEx2().previewDevice(PreviewDevice(rawValue: "iPhone 12 mini"))
            AspectRatioEx2().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
            AspectRatioEx2().previewDevice(PreviewDevice(rawValue: "iPhone 8"))
        }
        
    }
}
