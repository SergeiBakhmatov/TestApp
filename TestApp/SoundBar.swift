//
//  SoundBar.swift
//  TestApp
//
//  Created by Sergei Bakhmatov on 13.07.2023.
//

import Foundation

final class SoundBar {
    
    private var valume = 0
    
    func setValume(to value: Int) {
        valume = min(max(value, 0), 100)
    }
    
}
