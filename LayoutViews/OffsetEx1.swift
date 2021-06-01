//
//  OffsetEx1.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct OffsetEx1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Offset Örnek 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("Offset kullanarak bir viewi x ve y koordinatlarında hareket ettirebilirsiniz.").frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color.pink).font(.title)
            
            ZStack{
                RoundedRectangle(cornerRadius: 20).foregroundColor(.pink).frame(width:200,height: 150).shadow(radius: 5).offset(x: -20, y: -20)
                RoundedRectangle(cornerRadius: 20).foregroundColor(.pink).frame(width:200,height: 150).shadow(radius: 5)
                RoundedRectangle(cornerRadius: 20).foregroundColor(.pink).frame(width:200,height: 150).shadow(radius: 5).offset(x: 20, y: 20)
            }.padding()
            
            RoundedRectangle(cornerRadius: 15).foregroundColor(.blue).frame(width:200,height: 150).padding().shadow(radius: 5).offset(x: 40, y: 40).border(Color.red,width: 4)
        }
    }
}

struct OffsetEx1_Previews: PreviewProvider {
    static var previews: some View {
        OffsetEx1()
    }
}
