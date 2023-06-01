//
//  FlipCoinViewModel.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 01/06/2023.
//

import SwiftUI

class FlipCoinViewModel {
    func getWinner(numberOfPlayers: Int) -> Int {
        return Int.random(in: 1...numberOfPlayers)
    }
}
