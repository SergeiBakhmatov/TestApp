//
//  SoundBarTests.swift
//  SoundBarTests
//
//  Created by Sergei Bakhmatov on 13.07.2023.
//

import XCTest
@testable import TestApp

final class SoundBarTests: XCTestCase {
    
    var sut: SoundBar!
    var items: [String] = []

    override func setUp() {
        super.setUp()
        sut = SoundBar()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testSetVolumeShouldBeReturnZeroWhenLowestVolume() {
        sut.setValume(to: -1)
        
        XCTAssert(sut.volume == 0)
    }
    
    func testSetVolumeShouldBeReturn100WhenHighestVolume() {
        sut.setValume(to: 110)
        
        XCTAssert(sut.volume == 0)
    }

        func testLaunchPerformance() {
        measure {
            getMoreItems()
        }
        
    }
    
    private func getItems() {
        let numbers = 1...1000000
        
        for number in numbers {
            let item = "Item: \(number)"
            items.append(item)
        }
        
    }
    
    private func getMoreItems() {
        items = (1...1000000).map { "Item: \($0)" }
    }
    
}
