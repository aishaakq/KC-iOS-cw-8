//
//  ContentView.swift
//  Diary
//
//  Created by Aisha AlQabandi on 02/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    let chooseColor = [Color.red, Color.blue, Color.green, Color.yellow]
    @State var word = ""
    @State var chosenColor = Color.red
    var body: some View {
        NavigationView{
            ZStack{
                Color.cyan.ignoresSafeArea()
                VStack{
                    Text("Choose a color")
                        .font(.title)
                    HStack{
                        ForEach(chooseColor, id: \.self) {colors in
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(colors)
                                .padding()
                                .onTapGesture {
                                    chosenColor = colors
                                }
                        }
                    }
                    
                    Text("What do you want to write?")
                    TextField("Write here", text: $word)
                        .frame(width: 200, height: 40)
                    
                    NavigationLink {
                        Secondview(text: word, color: chosenColor)
                    } label: {
                        Text("Save")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .frame(width: 200, height: 40)
                    .padding()

                }
            }
            .navigationTitle("Diary")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
