//
//  OverlayEx1.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct OverlayEx1: View {
    var body: some View {
        Color.blue.overlay(
            VStack(spacing:20){
                Text("Overlay Örnek 1").font(.largeTitle)
                Text("Overlay arka plan atama").foregroundColor(.red)
                Image("Overlay")
                Text("Bu örnekte, VStack yapısını color viewin önünde görüyoruz. Ekrandaki arka plana renk atamak için kullanabileceğiniz yöntemlerden biri olarak düşünebilirsiniz.").frame(maxWidth:.infinity).padding().background(Color.orange)
            },alignment: .bottom
        ).edgesIgnoringSafeArea(.all).foregroundColor(.white).font(.title)
    }
}

struct OverlayEx1_Previews: PreviewProvider {
    static var previews: some View {
        OverlayEx1()
    }
}
