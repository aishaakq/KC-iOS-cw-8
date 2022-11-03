//
//  Secondview.swift
//  Diary
//
//  Created by Aisha AlQabandi on 02/11/2022.
//

import SwiftUI

struct Secondview: View {
    var text: String
    var color: Color
    var body: some View {
        ZStack{
            color.ignoresSafeArea()
            
            Text(text)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}

struct Secondview_Previews: PreviewProvider {
    static var previews: some View {
        Secondview(text: "", color: .blue)
    }
}
