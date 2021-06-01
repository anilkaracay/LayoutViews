//
//  BackgroundEx1.swift
//  LayoutViews
//
//  Created by Macbook Air on 30.05.2021.
//

import SwiftUI

struct BackgroundEx1: View {
    private let linearGraident = LinearGradient(gradient: Gradient(colors: [Color.red, Color.pink,Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
    var body: some View {
        VStack(spacing:20){
            Text("Background").font(.largeTitle)
            Text("Background Kontrolü ve Şekiller")
            Circle().frame(width:130,height: 45).background(Color.blue).foregroundColor(.green)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Linke gidin")
            }).padding().background(Color.yellow).foregroundColor(.white)
            Text("Layout Viewleri ve Arka Plan Renk ataması")
            HStack{
                Text("Bu bir horizontal stack nesnesidir")
            }.padding().frame(maxWidth:.infinity).background(Color.yellow)
            
            Group{
                Text("Background Gradient ve Şekiller")
                Circle().frame(width:135,height: 45).background(linearGraident).foregroundColor(.yellow)
                Text("Background Gradient ve Kontrol Nesneleri")
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Görünümü Düzenle").padding().foregroundColor(.white).padding(.horizontal,20).background(linearGraident).cornerRadius(15)
                })
                Text("Background Gradient ve Layout Nesneleri")
                VStack{
                    Text("Bu bir VStack nesenesidir").padding().foregroundColor(.white)
                }.frame(maxWidth:.infinity).background(linearGraident)
                Circle().frame(width:135,height: 45).foregroundColor(.yellow).background(Circle().foregroundColor(.black).offset(x:3,y:3))
                Button(action: {}, label: {
                    Text("Button").padding(.horizontal).foregroundColor(.white).font(.system(size: 25, weight: .black, design: .rounded)).padding().background(Capsule().foregroundColor(.yellow))
                })
                HStack{
                    Text("Eskiden buralar hep dutluktu").foregroundColor(.white)
                    
                }.padding().frame(maxWidth:.infinity).background(Ellipse().foregroundColor(.yellow))
            }
            
        }
    }
}

struct BackgroundEx1_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundEx1()
    }
}
