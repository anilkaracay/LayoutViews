//
//  FixedSizeEx1.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct FixedSizeEx1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Fixed Size Örnek 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("Fixed size metodu bir view için parent viewının kendisine çizdiği sınırları aşmasını sağlar.").frame(maxWidth:.infinity).font(.title).padding().background(Color.yellow).foregroundColor(.white)
            ZStack(alignment:.leading){
                HStack{
                    Spacer()
                    Image("raze").resizable().frame(width:200,height: 200)
                }
                Text("Her sabah swiftUI çalışırım.").font(.system(size: 40)).shadow(color: .white, radius: 1, x: 1, y: 1).padding().fixedSize(horizontal: true, vertical: false).frame(width:200,height: 200,alignment: .leading).border(Color.yellow)
            }
            ZStack(alignment:.leading){
                HStack{
                    Spacer()
                    Image("raze").resizable().frame(width:200,height: 200)
                }
                Text("Her sabah swiftUI çalışırım.").font(.system(size: 40)).shadow(color: .white, radius: 1, x: 1, y: 1).padding().fixedSize(horizontal: false, vertical: true).frame(width:200,height: 200,alignment: .leading).border(Color.yellow)
            }
        }
        
    }
}

struct FixedSizeEx1_Previews: PreviewProvider {
    static var previews: some View {
        FixedSizeEx1()
    }
}
