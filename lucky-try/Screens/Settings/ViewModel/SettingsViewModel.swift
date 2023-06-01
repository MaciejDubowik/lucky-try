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
    @Published var settings = Settings()
    var step: Int = 1
    var counter: Int = 1

    func updateNumberOfPlayers(_ number: Int) {
        settings.numberOfPlayers = number
    }

    func appendPlayerName(_ name: String) {
        settings.playersNames.append(name)
    }

    func updateBet(_ bet: String) {
        settings.bet = bet
    }

    func nextStep() {
        switch step {
        case 1:
            title = "Player 1 name is..."
            progressBar += (33.33/Double(settings.numberOfPlayers))
            step = 2
        case 2:
            if counter < settings.numberOfPlayers {
                counter += 1
                title = "Player \(counter) name is..."
                progressBar += (33.33/Double(settings.numberOfPlayers))
            } else {
                title = "What is the bet?"
                progressBar = 100.0
                step = 3
            }
        case 3:
            print("number of players- \(settings.numberOfPlayers)")
            print("players - \(settings.playersNames)")
            print("bet - \(settings.bet)")
            print(settings)
        default:
            print("error")
        }
    }

    func previousStep() {
        switch step {
        case 1:
            step = 1
        case 2:
            if 1 < counter {
                counter -= 1
                title = "Player \(counter) name is..."
                progressBar -= (33.33/Double(settings.numberOfPlayers))
                settings.playersNames.removeLast()
            } else {
                title = "How many players will play?"
                progressBar = 0
                step = 1
            }
        case 3:
            title = "Player \(counter) name is..."
            settings.playersNames.removeLast()
            step = 2
        default:
            print("error")
        }
    }
}
