//
//  SettingsViewModel.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 31/05/2023.
//

import SwiftUI

class SettingsViewModel: ObservableObject {
    @Published var title: String = "How many players will play?"
    @Published var progressBar: Double = 33.33
    var settings = Settings()
    var step: Int = 1
    var counter: Int = 1

    func nextStep() {
        switch step {
        case 1:
            title = "Player 1 name is..."
            progressBar += (33.33/Double(settings.numberOfPlayers))
            print(progressBar)
            step = 2
        case 2:
            if counter < settings.numberOfPlayers {
                counter += 1
                title = "Player \(counter) name is..."
                progressBar += (33.33/Double(settings.numberOfPlayers))
                print(progressBar)
            } else {
                title = "What is the bet?"
                progressBar = 100.0
                step = 3
            }

        case 3:
            print("number of players- \(settings.numberOfPlayers)")
            print("players - \(settings.playersNames)")
            print("bet - \(settings.bet)")
        default:
            print("error")
        }
    }
}
