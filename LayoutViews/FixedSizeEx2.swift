//
//  FixedSizeEx2.swift
//  LayoutViews
//
//  Created by Macbook Air on 31.05.2021.
//

import SwiftUI

struct FixedSizeEx2: View {
    var body: some View {
        VStack(spacing:20){
            Text("Fixed Size Örnek 2").font(.largeTitle)
            Text("Text Kırpılmasını Engelleme").font(.largeTitle).foregroundColor(.gray)
            Form{
                Section(header:Text("Formda Text Nesnesi").font(.largeTitle)){
                    Text("Bazen uzun metinler girdiğimizde bu metinlerin bir kısmı kırpılarak gösterilebilir.").listRowBackground(Color.pink).layoutPriority(2)
                    Text("Bazen uzun metinler girdiğimizde bu metinlerin bir kısmı kırpılarak gösterilebilir.").listRowBackground(Color.green).fixedSize(horizontal: false, vertical: true)
                }
            }
        }.font(.title)
        
    }
}

struct FixedSizeEx2_Previews: PreviewProvider {
    static var previews: some View {
        FixedSizeEx2()
    }
}
