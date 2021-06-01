//
//  LayoutPriority.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct LayoutPriority: View {
    var body: some View {
        VStack(spacing:20){
            Text("Layout Priority Örnek 1").font(.largeTitle)
            Text("Layout öncelik değerlerini kullanarak viewlere boşluk atanma zamanı geldiğinde hangi viewlerin daha öncelikli olacağını belirleyebiliyoruz.").font(.title).frame(maxWidth:.infinity).padding().background(Color.orange).foregroundColor(.white)
            Text("Layout Priority Değeri Yok (Değer: 0)").font(.largeTitle)
            VStack(alignment:.leading,spacing:10){
                HStack{
                    Image("raze").resizable().frame(width:100,height: 100).mask(Circle())
                    Text("Valorant raze").font(.largeTitle)
                }
                Text("Layout öncelik değeri dağıtılacak olan boşluk alanlarını yönetmemizi sağlar.").font(.title)
                
            }.padding().background(Color.yellow).cornerRadius(20).padding()
            
            Text("LayoutPriority kullanıldı.").font(.largeTitle)
            
            VStack(alignment:.leading,spacing:10){
                HStack{
                    Image("raze").resizable().frame(width:100,height: 100).mask(Circle())
                    Text("Valorant raze").font(.largeTitle)
                }
                Text("Layout öncelik değeri dağıtılacak olan boşluk alanlarını yönetmemizi sağlar.").font(.title)
                
            }.padding().background(Color.yellow).cornerRadius(20).padding().layoutPriority(2)
        }
    }
}

struct LayoutPriority_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriority()
    }
}
