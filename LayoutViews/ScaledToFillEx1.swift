//
//  ScaledToFillEx1.swift
//  LayoutViews
//
//  Created by Macbook Air on 1.06.2021.
//

import SwiftUI

struct ScaledToFillEx1: View {
    var body: some View {
        VStack(spacing:20){
            Text("ScaledToFill Örnek 1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            Text("ScaledToFill metodunu kullaarak contentin içeriğinin boyutunun tüm view alanını kaplamasını sağlayacak şekilde arttırabilirsiniz.").padding().frame(maxWidth:.infinity).background(Color.red).foregroundColor(.white)
            Text("Ölçekleme işlemi yok").font(.system(size: 22))
            HStack{
                Circle().fill(Color.yellow).frame(width:145,height: 145).border(Color.red,width:5)
                Image("raze").resizable().frame(width:145,height: 145).border(Color.blue,width: 5)
                Text("Valorant Raze").frame(width:50,height: 50).border(Color.black,width: 5)
            }
            Text("Viewler Ölçeklendiler(ScaledToFill)").font(.system(size: 22)).bold()
            VStack(spacing:20){
                Circle().fill(Color.yellow).scaledToFill().frame(width:150,height: 100).border(Color.red,width: 5)
                Image("raze").resizable().scaledToFill().frame(width: 150, height: 150, alignment: .center).border(Color.black,width: 5)
                Text("Valorant Raze").scaledToFill().frame(width:50,height: 50).border(Color.black,width: 5)
                Image("raze").resizable().frame(width:40,height:40).border(Color.blue,width: 5).scaledToFill()
            }
            
        }.font(.title)
    }
}

struct ScaledToFillEx1_Previews: PreviewProvider {
    static var previews: some View {
        ScaledToFillEx1()
    }
}
