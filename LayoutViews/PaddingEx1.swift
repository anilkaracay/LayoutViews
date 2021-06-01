//
//  PaddingEx1.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct PaddingEx1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Padding Örnek 1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            Text("Padding metodu viewlerin etrafına ekstra boşluklar eklemeyi sağlar").frame(maxWidth:.infinity).padding().foregroundColor(.init(red:179/255 , green: 145/255, blue: 86/255)).background(Color.init(red:51/255,green:48/255,blue:48/255))
            HStack{
                Spacer()
                Text("Önce")
                Spacer()
                Text("Sonra")
                Spacer()
            }
            HStack{
                Spacer()
                Image("p1")
                Spacer()
                Image("p1").padding().border(Color.pink,width:4)
            }
            HStack{
                Spacer()
                Text("SwiftUI").border(Color.purple,width:4)
                Spacer()
                Text("SwiftUI").padding().border(Color.purple,width:4)
            }
            
            HStack{
                Spacer()
                RoundedRectangle(cornerRadius:20).frame(width:100,height:100).border(Color.red,width:4)
                Spacer()
                RoundedRectangle(cornerRadius:20).frame(width:100,height:100).padding().border(Color.red,width:4).overlay(
                    GeometryReader{gr in
                        Text("Genişlik: \(Int(gr.size.width))\nYükseklik: \(Int(gr.size.height))").padding(.top,45).padding(.horizontal,20).font(.caption).foregroundColor(.white)
                        
                    }
                )
                Spacer()
            }
        }.font(.title)
    }
}

struct PaddingEx1_Previews: PreviewProvider {
    static var previews: some View {
        PaddingEx1()
    }
}
