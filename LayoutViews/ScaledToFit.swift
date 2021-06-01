//
//  ScaledToFit.swift
//  LayoutViews
//
//  Created by Macbook Air on 1.06.2021.
//

import SwiftUI

struct ScaledToFit: View {
    var body: some View {
        VStack(spacing:20){
            Text("ScaledToFit Örnek 1").font(.largeTitle)
            Text("ScaledToFit Uygulanmamış Nesneler").font(.system(size: 22)).bold().foregroundColor(.red)
            HStack{
                Circle().fill(Color.red).frame(width:150,height: 80).border(Color.yellow,width: 4)
                Image("raze").resizable().frame(width:150,height: 80).border(Color.red,width: 4)
                Text("Raze Valorant").frame(width:50,height: 50).border(Color.black,width: 4)
            }
            Text("ScaledToFit Uygulanmış Nesneler").font(.system(size: 22)).bold().foregroundColor(.red)
            
            VStack(spacing:20){
                Circle().fill(Color.red).scaledToFit().frame(width: 150, height: 80).border(Color.green,width: 4)
                Image("raze").resizable().scaledToFit().frame(width:200,height: 90).border(Color.red,width: 4)
                Text("Valorant Raze").scaledToFit().frame(width: 50, height: 50, alignment: .center).border(Color.black,width: 4)
            }
        }
    }
}

struct ScaledToFit_Previews: PreviewProvider {
    static var previews: some View {
        ScaledToFit()
    }
}
