//
//  lucky_tryApp.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 28/05/2023.
//

import SwiftUI

@main
struct LuckyTry: App {

    init(){
        printFonts()
    }

    func printFonts() {
        let fontFamily = UIFont.familyNames

        for familyName in fontFamily {
            print("------------")
            print("Font Family name - [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("font names -> [\(names)]")
        }
    }

    var body: some Scene {
        WindowGroup {
            StartView()
        }
    }
}
