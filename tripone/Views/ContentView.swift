//
//  ContentView.swift
//  tripone
//
//  Created by Wilson Junior on 26/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    Header()
                        .frame(width: view.size.width,
                        height: horizontalSizeClass == .compact ? 250 : 350,
                        alignment: .top)
                   
                    List(viagens) { viagem in
                        NavigationLink(destination: MapView(coordenada: viagem.localizacao).navigationBarTitle("Localização")) {
                            CardViagem(viagem: viagem)
                        }.navigationBarTitle("")
                    }
                }
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.sizeCategory, .large)
            
            ContentView()
                .environment(\.sizeCategory, .small)
        }
    }
}
