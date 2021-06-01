//
//  FrameEx3.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct FrameEx3: View {
    var body: some View {
        VStack(spacing:20){
            Text("Frame Örnek 3").font(.largeTitle)
            Text("Min ve Max Boyutlar").font(.title).foregroundColor(.gray)
            HStack{
                Image(systemName: "arrow.left")
                Text("Yatayda Sonsuza Kadar Genişleyebilir.").padding()
                Image(systemName: "arrow.right")
            }.frame(maxWidth:.infinity).background(Color.purple).foregroundColor(.white)
            VStack{
                Image(systemName: "arrow.up")
                Text("Dikeyde istediğiniz kadar uzatabilirsiniz")
                Image(systemName: "arrow.down")
            }.frame(minHeight:0,maxHeight: 500).background(Color.pink).foregroundColor(.white)
            HStack{
                Rectangle().foregroundColor(.red).padding().frame(minWidth:200,minHeight: 50)
                Ellipse().foregroundColor(.blue).padding().frame(minWidth:150,minHeight: 100)
                Rectangle().foregroundColor(.green).padding().frame(minWidth:250,minHeight:75)
            }
        }.font(.title)
    }
}

struct FrameEx3_Previews: PreviewProvider {
    static var previews: some View {
        FrameEx3()
    }
}
