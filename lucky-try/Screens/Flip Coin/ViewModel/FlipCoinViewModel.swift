//
//  FlipCoinViewModel.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 01/06/2023.
//

import SwiftUI

class FlipCoinViewModel {
    @Published var settings: Settings

    init(settings: Settings) {
        self.settings = settings
    }

    func click() {
        print("")
        print("number of players- \(settings.numberOfPlayers)")
        print("players - \(settings.playersNames)")
        print("bet - \(settings.bet)")
    }
    
}