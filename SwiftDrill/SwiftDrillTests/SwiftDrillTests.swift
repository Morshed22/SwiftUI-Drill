//
//  SwiftDrillTests.swift
//  SwiftDrillTests
//
//  Created by Morshed Alam on 4/2/23.
//

import XCTest
@testable import SwiftDrill

final class SwiftDrillTests: XCTestCase {

    var game : Game!
    
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
       game = nil
    }

    func testScorePositive() {
        var guess = game.target + 5
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        var guess = game.target - 5
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
}
