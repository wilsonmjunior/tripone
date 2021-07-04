//
//  CardViagem.swift
//  tripone
//
//  Created by Wilson Junior on 27/06/21.
//

import SwiftUI

struct CardViagem: View {
    var viagem: Viagem
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir",
                              size: self.horizontalSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(height: self.horizontalSizeClass == .compact ? 180 : 300)
                .clipped()
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir",
                                  size: self.horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir",
                                  size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

struct CardViagem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardViagem(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 500, height: 250))
            
            CardViagem(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 900, height: 500))
        }
    }
}
