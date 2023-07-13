//
//  SoundBar.swift
//  TestApp
//
//  Created by Sergei Bakhmatov on 13.07.2023.
//

import Foundation

final class SoundBar {
    
    private(set) var volume = 0
    
    func setValume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
    
}
