//
//  ContentView.swift
//  ButtonAnim
//
//  Created by Pushpendra on 10/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var isClicked : Bool = false
    var body: some View {
        Button {
            isClicked.toggle()
            print("Clicked here")
        } label: {
            Image(systemName: isClicked ? "heart.fill" : "heart")
                .resizable()
                .renderingMode(.original)
                .frame(width: 50, height: 50)
        }
        .buttonStyle(ScaleButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ScaleButtonStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.scaleEffect(configuration.isPressed ? 2  : 1)
    }
}
