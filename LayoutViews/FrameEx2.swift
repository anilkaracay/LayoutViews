//
//  FrameEx2.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct FrameEx2: View {
    var body: some View {
        VStack(spacing:20){
            Text("Frame Örnek 2").font(.largeTitle)
            Text("Şekiller tüm boşluğu doldurabilir. Frame kullanarak bunu sınırla")
            HStack{
                Capsule().foregroundColor(.pink).frame(width:150,height: 100)
                Rectangle().foregroundColor(.blue).frame(width:150,height: 75)
            }
            Text("Butonlar içeriğine göre boyutlandırılır. Fakat framei kullanark içeriğinden çok daha büyük boyutlara sahip olmasını sağlayabilriiz.").padding().background(Color.orange).foregroundColor(.white)
            Button(action: {}, label: {
                Text("Bas ve git")
            }).frame(width:200,height: 200).background(Color.yellow).border(Color.pink)
            Group{
                HStack{
                    Button(action: {}, label: {
                        Text("Üst")
                    }).frame(width: 150, height: 150, alignment: .top).border(Color.red)
                    Button(action: {}, label: {
                        Text("Alt")
                    }).frame(width: 150, height: 150, alignment: .bottom).border(Color.red)
                }
                HStack{
                    Button(action: {}, label: {
                        Text("Sol")
                    }).frame(width: 150, height: 150, alignment: .leading).border(Color.red)
                    Button(action: {}, label: {
                        Text("Sağ")
                    }).frame(width: 150, height: 150, alignment: .trailing).border(Color.red)
                }
            }
        }
    }
}

struct FrameEx2_Previews: PreviewProvider {
    static var previews: some View {
        FrameEx2()
    }
}
