//
//  PositionEx2.swift
//  LayoutViews
//
//  Created by Macbook Air on 1.06.2021.
//

import SwiftUI

struct PositionEx2: View {
    var body: some View {
        VStack(spacing:20){
            Text("Position Örnek 2").font(.largeTitle)
            Text("Position ve GeomeeryReader").foregroundColor(.gray)
            Text("Position metoduna göndermeniz gereken değerleri Geo Reader'dan almak daha sağlıklı sonuç verecektir.").frame(maxWidth:.infinity).padding().background(Color.pink).foregroundColor(.white).layoutPriority(1)
            GeometryReader{gr in
                ZStack(){
                    Image(systemName: "1.circle.fill").foregroundColor(.yellow).position(x: 20, y: 20)
                    Image(systemName: "2.circle.fill").foregroundColor(.red).position(x: gr.size.width-20, y: 20)
                    Image(systemName: "3.circle.fill").foregroundColor(.blue).position(x: 20, y: gr.size.height-20)
                    Image(systemName: "4.circle.fill").foregroundColor(.green).position(x: gr.size.width-20, y: gr.size.height-20)
                }
            }.font(.title).border(Color.purple,width:6)
        }.font(.title)
    }
}

struct PositionEx2_Previews: PreviewProvider {
    static var previews: some View {
        PositionEx2()
    }
}
