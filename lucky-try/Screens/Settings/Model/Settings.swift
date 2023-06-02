//
//  Settings.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 31/05/2023.
//

import Foundation

class Settings: ObservableObject {
    @Published var numberOfPlayers: Int = 2
    @Published var playersNames: [String] = []
    @Published var bet: String  = ""
}
