//
//  Game.swift
//  SwiftDrill
//
//  Created by Morshed Alam on 4/2/23.
//

import Foundation

struct Game {
    var target : Int = Int.random(in: 1...100)
    var score:Int = 0
    var round :Int = 1
    
    mutating func points(sliderValue: Int) -> Int {
         100 - abs(target - sliderValue)
    }
}
