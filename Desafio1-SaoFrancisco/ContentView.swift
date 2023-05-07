//
//  ContentView.swift
//  Desafio1-SaoFrancisco
//
//  Created by Milena Kessia on 20/03/23.
//

import SwiftUI

enum Casas {
    case grifinoria
    case corvinal
    case lufalufa
    case sonserina
}

struct ContentView: View {
    
    @State var imagemCasa = Image("hogwarts")
    
    var body: some View {
        VStack{
                Group{
                    Text("Qual sua casa em Harry Potter?")
                        .font(.largeTitle.bold())
                        .multilineTextAlignment(.center)
                    imagemCasa
                        .resizable()
                        .scaledToFit()
                }
                .offset(y: -80)
                
            Button {
        
                if imagemCasa == Image("hogwarts"){
                    imagemCasa = Image("grifinoria")
                }else if imagemCasa == Image("grifinoria"){
                    imagemCasa = Image("corvinal")
                }else if imagemCasa == Image("corvinal"){
                    imagemCasa = Image("lufalufa")
                }else if imagemCasa == Image("lufalufa"){
                    imagemCasa = Image("sonserina")
                } else {
                    imagemCasa = Image("hogwarts")
                }
                    
            } label: {
                Text("Escolha sua casa")
                    .font(.system(.largeTitle))
                    .foregroundColor(.black)
                    .frame(width:300, height: 80, alignment: .center)
                    .background(Color("AccentColor"))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
