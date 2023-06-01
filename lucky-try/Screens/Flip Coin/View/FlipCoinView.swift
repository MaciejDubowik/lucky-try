//
//  FlipCoinView.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 01/06/2023.
//

import SwiftUI

struct FlipCoinView: View {
    @State private var rotationDegrees: Double = 0
    @State private var flip: Bool = false
    @EnvironmentObject var settingsViewModel: SettingsViewModel
    @Binding var originalIsActive: Bool

    var body: some View {
        let flipCoinViewModel = FlipCoinViewModel()
        var winner = flipCoinViewModel.getWinner(numberOfPlayers: settingsViewModel.settings.numberOfPlayers)

        NavigationView {
            VStack {

                VStack {
                    Text("\(settingsViewModel.settings.numberOfPlayers) Players")
                        .font(.custom(S.Font.Lato.bold, size: 24))
                        .frame(maxWidth: .infinity, alignment: .bottomLeading)
                    Text("Bet: \(settingsViewModel.settings.bet)")
                        .font(.custom(S.Font.Lato.regular, size: 24))
                        .frame(maxWidth: .infinity, alignment: .bottomLeading)
                }
                .padding(.top, 40)
                .padding(.horizontal, 30)

                Spacer()

                Button {
                     withAnimation {
                         rotationDegrees += 360
                         flip.toggle()
                     }
                 } label: {
                     ZStack {
                         Circle()
                             .frame(width: 200)
                             .foregroundColor(Color(hex: S.Color.darkBlue))
                             .rotation3DEffect(.degrees(rotationDegrees), axis: (x: 0, y: 1, z: 0))
                         Text(flip ? "\(winner)" : "Click here to start")
                             .font(.custom(S.Font.Lato.bold, size: 20))
                             .foregroundColor(.white)
                             .rotation3DEffect(.degrees(rotationDegrees), axis: (x: 0, y: 1, z: 0))
                     }
                 }

                Spacer()

                if flip {
                    Text("\(settingsViewModel.settings.playersNames[winner-1]) wins!")
                        .font(.custom(S.Font.Lato.extraBold, size: 24))
                }

                Spacer()

                Button(action: {
                    originalIsActive = false
                }, label: {
                    Text("New game")
                        .font(.custom(S.Font.Lato.bold, size: 18))
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .foregroundColor(.white)
                        .background(Color(hex: S.Color.orange))
                })
                .padding(.bottom)
            }
            .ignoresSafeArea(.container, edges: .bottom)
        }
    }
}
