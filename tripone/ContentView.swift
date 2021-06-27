//
//  ContentView.swift
//  tripone
//
//  Created by Wilson Junior on 26/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    //        let skyBlue = Color(red: 0.8, green: 0.3, blue: 2.0)
    
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("alura viagens")
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 50)
                    Text("ESPECIAL")
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("Brasil")
                        .font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .foregroundColor(.white)
                .background(Color.purple)
                
                buttons
                
                List(viagens) { viagem in
                    VStack {
                        Text(viagem.titulo)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        Image(viagem.imagem)
                            .resizable()
                            .frame(height: 180)
                        HStack {
                            Text(viagem.quantidadeDeDias)
                            Spacer()
                            Text(viagem.valor)
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
    var buttons: some View {
        HStack {
            Button {
                print("hoteis")
            } label: {
                Text("Hotéis")
            }
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
            .background(Color.blue)
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue,lineWidth: 10))
            Spacer()
            Button {
                print("pacotes")
            } label: {
                Text("Pacotes")
            }
            .frame(width: 100, height: 50)
            .background(Color.orange)
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.orange, lineWidth: 10))
        }
        .foregroundColor(.white)
        .font(.custom("Avenir Medium", size: 18))
        .offset(y: -25)
        .padding(.horizontal, 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .large)
    }
}
