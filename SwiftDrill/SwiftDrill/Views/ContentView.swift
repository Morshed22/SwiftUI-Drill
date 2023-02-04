//
//  ContentView.swift
//  SwiftDrill
//
//  Created by Morshed Alam on 4/2/23.
//

import SwiftUI

struct ContentView: View {
    @State private var alertISVisible: Bool = false
    @State private var sliderValue : Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack{
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
                
            }
            Button(action: {
                print("Hey SwiftUI!!")
                self.alertISVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertISVisible) {
                var roundedValue = Int (self.sliderValue.rounded())
                return Alert(title: Text("Hello there!!"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue))"), dismissButton: .default(Text("Awesome!")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
