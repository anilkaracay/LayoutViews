//
//  HiddenEx1.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct OrangeRectangle: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 20).foregroundColor(.orange)
    }
}

struct HiddenEx1: View {
    @State private var visibleView = false
    var body: some View {
        VStack(spacing:20){
            Text("Hidden Örnek 1").font(.largeTitle)
            Text("Hidden metoduyla viewlerı gizleyebilirsiniz.").font(.title).foregroundColor(.gray)
            if visibleView == true {
                OrangeRectangle().overlay(Text("Gizli bir viewi görüyorsunuz."))
            } else {
                OrangeRectangle().hidden().overlay(Text("Şekil Görünmüyor fakat hala yerini korumaya devam ediyor. Eğer aksi olsaydı bu cümleleri okuyamazdınız.")).foregroundColor(.red)
            }
            OrangeRectangle()
            OrangeRectangle()
            Toggle(isOn: $visibleView, label: {
                if visibleView {
                    Text("Gizle")
                } else {
                    Text("Göster")
                }
            }).padding()
            Spacer()
            Button(action: {self.visibleView.toggle()}, label: {
                Text("View Gizle/Göster")
            })
        }
    }
}

struct HiddenEx1_Previews: PreviewProvider {
    static var previews: some View {
        HiddenEx1()
    }
}
