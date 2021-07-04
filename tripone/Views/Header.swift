//
//  Header.swift
//  tripone
//
//  Created by Wilson Junior on 27/06/21.
//

import SwiftUI

struct    Header: View {
    // responsive
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("alura viagens")
                        .font(.custom("Avenir Black",
                                      size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.top, self.horizontalSizeClass == .compact ? 50 : 90)
                    Text("ESPECIAL")
                        .font(.custom("Avenir Book",
                                      size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("Brasil")
                        .font(.custom("Avenir Black",
                                      size: self.horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width,
                       height: horizontalSizeClass == .compact ? 200 : 350, alignment: .top)
                .foregroundColor(.white)
                .background(Color.purple)
              
                    
                HStack {
                    Button {
                        print("hoteis")
                    } label: {
                        Text("Hotéis")
                    }
                    .frame(width: horizontalSizeClass == .compact ? 100 : 150,
                           height: horizontalSizeClass == .compact ? 50 : 75)
                    .background(Color.blue)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue,lineWidth: 10))
                    Spacer()
                    Button {
                        print("pacotes")
                    } label: {
                        Text("Pacotes")
                    }
                    .frame(width: horizontalSizeClass == .compact ? 100 : 150,
                           height: horizontalSizeClass == .compact ? 50 : 75)
                    .background(Color.orange)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.orange, lineWidth: 10))
                }
                .foregroundColor(.white)
                .font(.custom("Avenir Medium", size:
                                self.horizontalSizeClass == .compact ? 18 : 24))
                .offset(y: horizontalSizeClass == .compact ? -25 : -37.50)
                .padding(.horizontal,
                         self.horizontalSizeClass == .compact ? 50 : view.size.width/4)
            }
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Header()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 250))
            
            Header()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 400))
        }
    }
}
