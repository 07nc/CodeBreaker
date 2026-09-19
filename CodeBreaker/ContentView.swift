//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Nipun Chawla on 16/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            pegs(colors: [.red, .green, .blue, .yellow])
            pegs(colors: [.red,.green,.green,.yellow])
            pegs(colors: [.red,.green,.yellow,.red])
        }.padding()
    }
    func pegs(colors: Array<Color>)-> some View{
        return HStack {
            ForEach(colors.indices, id: \.self){index in
                RoundedRectangle(cornerRadius: 10).aspectRatio(1,contentMode: .fit).foregroundStyle(colors[index])
            }
            MatchMarkers(matches: [.exact,.inexact,.exact,.nomatch])
        }
    }
}


#Preview {
    ContentView()
}
