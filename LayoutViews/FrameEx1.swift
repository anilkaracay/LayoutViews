//
//  FrameEx1.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct FrameEx1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Frame Örnek 1").font(.largeTitle)
            Text("Orijinal Boyut")
            Image("raze").resizable()
            Text("Genişlik ve yükseklik belirli")
            HStack{
                Image("raze").resizable().frame(width:100,height: 100)
                Image("raze").resizable().frame(width:75,height: 75)
                Image("raze").resizable().frame(width:50,height: 50)
            }
            Image("raze").resizable().aspectRatio(1, contentMode: .fit).frame(height:100)
            Image("raze").resizable().frame(width:300,height: 110)
        }
    }
}

struct FrameEx1_Previews: PreviewProvider {
    static var previews: some View {
        FrameEx1()
    }
}
