//
//  BackgroundView.swift
//  SwiftDrill
//
//  Created by Morshed Alam on 5/2/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TopView: View{
    
    @Binding var game: Game
    @State private var leaderboardIsShowing = false
    
    var body: some View{
        Text("to do")
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
