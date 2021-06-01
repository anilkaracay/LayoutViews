//
//  PositionEx1.swift
//  LayoutViews
//
//  Created by Macbook Air on 1.06.2021.
//

import SwiftUI

struct PositionEx1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Position Örnek 1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            Text("Position metodu uygulanmadı").border(Color.purple,width: 3)
            Text("Position metodu uygulandı.").position(x: 200, y: 70).border(Color.purple,width: 5)
            Text("Üstteki metin geriye kalan tüm boşluğu kaplıyor.").frame(maxWidth:.infinity).padding().background(Color.purple).foregroundColor(.white)
            Image("xy")
            ZStack{
                Text("45,15").position(x: 45, y: 15)
                Text("370,15").position(x: 370, y: 15)
                Text("50,130").position(x: 50, y: 130)
                Text("370,130").position(x: 370, y: 130)
                Text("190,70").position(x: 190, y: 70)
            }.border(Color.red,width: 3)
        }.font(.title)
    }
}

struct PositionEx1_Previews: PreviewProvider {
    static var previews: some View {
        PositionEx1()
    }
}
