//
//  OverlayEx2.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct OverlayEx2: View {
    var body: some View {
        ZStack(alignment:.center){
            Color.blue
            VStack(spacing:20){
                Text("Overlay Örnek 2").font(.largeTitle)
                Text("Overlay ve ZStack")
                HStack{
                    Image("Overlay")
                    Image("ZStack")
                    
                }
                Text("Benzer layout tasarımlarıın ZStack ve Overlay metodunu kullanarak yapabiliriz.").frame(maxWidth:.infinity).padding().background(Color.orange)
                RoundedRectangle(cornerRadius: 5).frame(width:300,height: 200).overlay(Circle().foregroundColor(.red).frame(width:200,height: 120)).overlay(Text("Japonya Bayrağı").foregroundColor(.green).font(.headline).padding(.bottom,10),alignment: .bottom)
                
                Rectangle().foregroundColor(.red).frame(width:300,height: 150).overlay(
                    Circle().padding(.vertical).overlay(
                        Circle().padding(.vertical).foregroundColor(.red).offset(x:30,y:0)
    
                    )
            
                )
                
            }
        }.edgesIgnoringSafeArea(.vertical).font(.title).foregroundColor(.white)
    }
}

struct OverlayEx2_Previews: PreviewProvider {
    static var previews: some View {
        OverlayEx2()
    }
}
