//
//  AspectRatioEx1.swift
//  LayoutViews
//
//  Created by Macbook Air on 30.05.2021.
//

import SwiftUI

struct AspectRatioEx1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Aspect Ratio Örnek 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("Orijinal Görüntü")
            Image("raze").resizable().frame(height:60)
            Text("Genişlik Yüksekliğin Yarısı (1:2")
            Image("raze").resizable().frame(height:60).aspectRatio(0.5, contentMode: .fit)
            Text("Genişkik Yüksekliğin 2 katı (2:1)")
            Image("raze").resizable().frame(height:60).aspectRatio(2, contentMode: .fit)
            Text("Genişkik Yüksekliğin 3 katı (3:1)")
            Image("raze").resizable().frame(height:60).aspectRatio(3, contentMode: .fit)
            
            
        }
        
    }
}

struct AspectRatioEx1_Previews: PreviewProvider {
    static var previews: some View {
        AspectRatioEx1()
    }
}
