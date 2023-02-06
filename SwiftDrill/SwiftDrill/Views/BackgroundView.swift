//
//  BackgroundView.swift
//  SwiftDrill
//
//  Created by Morshed Alam on 5/2/23.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    var body: some View {
        VStack {
            TopView(game: $game)
          //Spacer()
         // BottomView(game: $game)
        }
    }
}

struct TopView: View{
    @Binding var game: Game
    @State private var leaderboardIsShowing = false
    
    var body: some View{
        HStack{
            Button(action: {
              game.restart()
            }) {
              RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            }
            Spacer()
            Button {
                leaderboardIsShowing = true
            } label: {
                RoundedImageViewFilled(systemName: "list.dash")
            }.sheet(isPresented: $leaderboardIsShowing) {
               // Leaderbo
            }

        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
