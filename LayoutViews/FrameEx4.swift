//
//  FrameEx4.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct FrameEx4: View {
    var body: some View {
        VStack(spacing:20){
            Text("Frame Örnek 4").font(.largeTitle)
            Text("Normal boyut")
            Image(systemName: "arrow.right.arrow.left").padding().background(Color.green)
            Text("Alttaki görüntü bulunduğu tüm boşluğu kaplayacak")
            Image(systemName: "arrow.right.arrow.left").padding().frame(maxWidth:.infinity,maxHeight: .infinity).background(Color.green)
        }.font(.title)
    }
}

struct FrameEx4_Previews: PreviewProvider {
    static var previews: some View {
        FrameEx4()
    }
}
