//
//  ContentView.swift
//  Memorize
//
//  Created by Joseph A Guzzardo on 11/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor( .blue)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
            shape
                .stroke(lineWidth: 3)
            shape
                .fill()
                .foregroundColor(.gray)
            Text("💀")
                .font(.largeTitle)
   //                .padding()
            } else {
               shape
                    .fill(.blue)
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
